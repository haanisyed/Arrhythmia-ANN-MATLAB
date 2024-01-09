# Arrhythmia-ANN-MATLAB
Artificial Neural Network Model for EKG Classification in MATLAB.

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

1. Loading CSV Data

2. Extracting Relevant Columns (time_ms, MLII, V5)

3. Creation of Input Features Variable (X)

4. 






















![image](https://github.com/haanisyed/Arrhythmia-ANN-MATLAB/assets/116673121/2a3c2bc5-25c8-4ebc-aab2-eff672a1f6b9)
