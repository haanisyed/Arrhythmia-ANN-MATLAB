% Specify the full path to your CSV file
file_path = '/Users/haani/Downloads/archive/100.csv';

% Read the CSV file into a table
data = readtable(file_path);

% Display the first few rows of the table
disp(data);

% Extracting relevant columns
time_ms = data.time_ms;
MLII = data.MLII;
V5 = data.V5;

% Define abnormal criteria based on MLII (values less than -0.5 are abnormal)
threshold_for_abnormal_MLII = -0.5;
data.binary_label = (MLII < threshold_for_abnormal_MLII);

% The Features (input variables)
X = [time_ms, MLII, V5];

% Target labels (output variable)
Y = data.binary_label;

% Split data into training and testing sets
split_ratio = 0.8;
split_idx = round(split_ratio * size(X, 1));

% Normalizes data
X_train = X(1:split_idx, :);
y_train = Y(1:split_idx, :);


X_test = X(split_idx+1:end, :);
y_test = Y(split_idx+1:end, :);

% Normalize data
X_train = normalize(X_train);
X_test = normalize(X_test);


% Defines neural network architecture
net = feedforwardnet([10, 5]); % Example: 2 hidden layers with 10 and 5 neurons
net = configure(net, X_train', y_train');

% Set training parameters
net.trainParam.epochs = 100; % Modify as needed
net.trainParam.lr = 0.01; % Learning rate

% Train the neural network (Requires Deep Learning add-on download)
net = train(net, X_train', y_train');

% Make predictions on the test set (Provides numerical value)
y_pred = net(X_test');

% Evaluate performance
performance = perform(net, y_test', y_pred);
disp(['Performance: ', num2str(performance)]);

% Example: Plots actual vs. predicted values
plot(y_test, '-b'); hold on;
plot(y_pred, '-r'); hold off;
legend('Actual', 'Predicted');
xlabel('Sample');
ylabel('Output');