# Arrhythmia-ANN-MATLAB
• Developed Artificial Neural Network model in MATLAB for EKG Binary classification using Patient 100's data CSV file from MIT-BIH Arrhythmia Database.

• Implemented Cardiac Arrhythmia Detection Binary classification system of normal and abnormal with threshold of -0.5 MLII Biomedical Signal.

**Data Used**

Data Source: https://www.kaggle.com/datasets/protobioengineering/mit-bih-arrhythmia-database-modern-2023?resource=download

MIT-BIH Arrhythmia Database, which contains 48 electrocardiograms (EKGs) from 47 patients that were at Beth Israel Deaconess Medical Center in Boston, MA in 1975-1979. There are 48 CSVs, each of which is a 30-minute echocardiogram (EKG) from a single patient (record 201 and 202 are from the same patient). Data was collected at 360 Hz, meaning that 360 rows is equal to 1 second of time.

Converted from .dat to .csv for ease.

Each file's name is Patient's ID. The Neural Network is developed specifically for the Patient with ID 100.

**EKG**

EKGs, or electrocardiograms, measure the heart's function by looking at its electrical activity. The electrical activity in each part of the heart is supposed to happen in a particular order and intensity, creating that classic "heartbeat" line (or "QRS complex") you see on monitors in medical TV shows.

There are a few types of EKGs (4-lead, 5-lead, 12-lead, etc.), which give us varying detail about the heart. A 12-lead is one of the most detailed types of EKGs, as it allows us to get 10 different outputs or graphs, all looking at different, specific parts of the heart muscles.

This dataset only publishes two leads from each patient's 12-lead EKG, since that is all that the original MIT-BIH database provided.


**Columns**

index
calculated elapsed milliseconds (index / 360 * 1000)
the first lead
the second lead
The two leads are often lead MLII and another lead such as V1, V2, or V5, though some datasets do not use MLII at all. MLII is the lead most often associated with the classic QRS Complex (the medical name for a single heartbeat).

Milliseconds were calculated and added as a secondary index to each dataset. Calculations were made by dividing the index by 360 Hz then multiplying by 1000. The original index was preserved, since the calculation of milliseconds as digital signals processing (e.g. filtering) occurs may cause issues with the correlation and merging of data. 

**Steps Taken**

Binary Classification Task: classify EKG signals into two categories (e.g., normal vs. abnormal), based on MLII number.

1. Install Deep Learning Toolbox to MATLAB (add-on)

2. Ensure Statistics and Machine Learning Toolbox (add-on) has been automatically downloaded, if not: make sure to download 

3. Specify the full path to your CSV file

4. Read the CSV file into a table

5. Display the first few rows of the table (To confirm MATLAB knows where file is located and can access before we proceed to more difficult tasks)

6. Extract the relevant columns by creating respective variables (time_ms, MLII, V5)

7. Define abnormal criteria based on MLII Signal (Assumption made: values less than -0.5 are abnormal)

8. Creating variable X For The Features (input variables)

9. Creating variable Y For The Target labels (output variable)

10. Splitting the data into training and testing sets (80% data used for training, 20% used for testing/validation).

11. Normalizing the data

12. Defining neural network architecture

13. Setting training parameters

14. Train the neural network (Requires Deep Learning add-on download)

15. Make predictions on the test set (Provides numerical value)

16. Evaluate performance

17. Example: Plots actual vs. predicted values



















![image](https://github.com/haanisyed/Arrhythmia-ANN-MATLAB/assets/116673121/2a3c2bc5-25c8-4ebc-aab2-eff672a1f6b9)


![image](https://github.com/haanisyed/Arrhythmia-ANN-MATLAB/assets/116673121/baadb1f4-60ca-4644-a4d2-91a5a27f27c6)

