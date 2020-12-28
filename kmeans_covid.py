#Teil1
#importing the packages
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.cluster import KMeans
#Teil2
#reading the data and saving it into a variable as a dataframe
df = pd.read_csv("./covid_data")
#Teil3
#selecting the rows where dateRep!22/09/2020
df = df[df.dateRep == '21/09/2020']
#excluding all columns beside cases and deaths
df = df[['deaths', 'cases']]
#creating the kmeans alghorithm
kmeans = KMeans(n_clusters=3, n_init=100)
#fitting the alghorithm to the dataset
kmeans.fit(df)
#performing the alghorithm on the dataset
P = kmeans.predict(df)
#setting the figure size
plt.figure(figsize=(7,7))
#plotting the scatters
plt.scatter(df['cases'], df['deaths'], c=P, marker="o", picker=True)
#setting the parameters for the plot
plt.title('covid deaths in relation to new cases')
plt.xlabel('cases')
plt.ylabel('deaths')
#Teil4
#saving the plot
plt.savefig('Pplots.png')
