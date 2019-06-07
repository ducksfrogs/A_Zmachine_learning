import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dataset = pd.read_csv('../data/Data.csv')


X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, 3].values

from sklearn.impute import SimpleImputer
imputer = SimpleImputer(missing_values='nan', strategy='mean')
imputer.fit(X[:, 1:3])

from sklearn.preprocessing import LabelEncoder, OneHotEncoder

labelencorder_X = LabelEncoder()
X[:, 0] = labelencorder_X.fit_transform(X[:, 0])
onehotencorder = OneHotEncoder(categorical_features=[0])
X = onehotencorder.fit_transform(X).toarray()
labelencorder_y = LabelEncoder()
y = labelencorder_y.fit_transform(y)


