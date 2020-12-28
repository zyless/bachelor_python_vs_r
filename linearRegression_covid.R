#Teil1
#Teil2
#reading the data and saving it into a variable as a dataframe
df <- read.csv("./covid_data")
#Teil3
#selecting the dataframe where the column CountriesAndTerritories==Austria
df <- df[df$countriesAndTerritories=="Austria", ]
#excluding all columns beside dateRep and cases
df <- subset(df, select=c(dateRep,cases))
#manipulating the time format to fit the visualisation
df$dateRep <- as.Date(df$dateRep, "%d/%m/%Y")
#creating the linear model
model <- lm(df$cases ~ df$dateRep)
#defining the filename and format
png(filename="Rplots.png", width=700, height=700)
#Teil4
#plotting the scatters
plot(df$dateRep, df$cases, main="linear regression of new covid cases per day", col="orange", xlab="date", ylab="cases")
#plotting the Regressionline
abline(model, col="blue")