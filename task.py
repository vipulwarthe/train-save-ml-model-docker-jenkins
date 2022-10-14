import pandas as pd
import joblib
dataset = pd.read_csv('dataset.csv')
x=dataset['YearsExperience']
y=dataset['Salary']
X=x.values.reshape(-1,1)
from sklearn.linear_model import LinearRegression
model = LinearRegression()
model.fit(X, y)
joblib.dump(model , 'trainedmodel.pkl')
model=joblib.load('trainedmodel.pkl')
exp=4.5
print(model.predict([[exp]]))