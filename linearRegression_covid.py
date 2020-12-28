#Teil1
#importing the packages
import pandas as pd 
import matplotlib.pyplot as plt 
from sklearn import linear_model
#Teil2
#reading the data and saving it into a variable as a dataframe
df = pd.read_csv("./covid_data")
#Teil3
#selecting the columns where countriesAndTerritories==Austria
df = df[df.countriesAndTerritories == 'Austria'] #df.countriesAndTerritories == 'Austria'
#excluding all columns beside dateRep and cases
df = df[['dateRep', 'cases']]
#manipulating the time format to fit the visualisation
df['dateRep'] = pd.to_datetime(df['dateRep'], dayfirst =True)
#creating the linear model
model = linear_model.LinearRegression()
#fitting the model for the dataset
model.fit(df['dateRep'].values.reshape(-1, 1), df['cases'].values.reshape(-1, 1))
#performing the modle on the dataset
y_pred = model.predict(df['dateRep'].values.astype(float).reshape(-1, 1))
#setting the parameters for the visualization
plt.figure(figsize=(7,7))
plt.title('linear regression of new covid cases per day')
plt.xlabel('date')
plt.ylabel('cases')
#plotting the scatter
plt.scatter(df['dateRep'], df['cases'], color='orange')
#plotting the Regressionline
plt.plot(df['dateRep'], y_pred, color='blue')
#rotating the x axis for better readability
plt.xticks(rotation=70)
#Teil4
#saving the plot
plt.savefig('Pplots.png')