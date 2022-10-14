import joblib

print("Enter Your Experience : ", end='')
exp=input()

model=joblib.load('app.k')
p=model.predict([[exp]])
print(p)