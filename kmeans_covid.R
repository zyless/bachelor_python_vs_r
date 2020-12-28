#Teil1
#Teil2
#reading the data and saving it into a variable as a dataframe
df <- read.csv("./covid_data")
#Teil3
#selecting the dataframe where the columns dateRep==21/09/2020
df <- df[df$dateRep=="21/09/2020", ]
#excluding all columns beside cases and deaths
df <- subset(df, select=c(cases,deaths))
#performing the kmeans clustering on the dataframe, with 3 clusters and 43 Iterations
km <- kmeans(df, 3, iter.max=43)
#setting the filename and format
png(filename="Rplots.png", width=700, height=700)
#Teil4
#plotting the analysis
plot(df[c("cases", "deaths")], col = km$cluster, main="covid deaths in relation to new cases")

