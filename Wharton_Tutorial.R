#1
#Created a variable for the file being uploaded
#Used read.csv to read the file
#First line in the dataset was indicated as a header and commas were indicated as separators
#A variable was created to refer to the indexed top 10 rows of the dataframe; columns were not specified
iris<-read.csv("iris.csv",header=TRUE,sep=",")
topiris<-iris[1:10,]

#2.1
#tail command was used to select for the last 2 rows of the iris variable (previously created for dataframe)
#A variable "last" was created to contain this previous information
#"last2" variable was created to contain the indexed columns 4:5 from "last"
#These columns were the last ones in the dataframe
last<-tail(iris,2)
last2<-last[,4:5]

#2.2
#Created the "df" variable to hold the last (5th) column of "iris". This column contains species information
#Used the "unlist" command to create a vector out of the contents of df
#used the "table" command to create a contingency table that counted the frequency of the observations
df<-iris[,5]
table(unlist(df))

#2.3
#Used [] to index rows that met the logical criteria of being larger than 3.5 in the "Sepal.Width" column of the iris dataset
#Created the "big" variable to contain the information
big<-iris[iris$Sepal.Width>3.5,]

#2.4
#Used the "grep" command to look for "setosa" character pattern in the "Species" column of the "iris" dataset
#This information was containted in the "setosa" variable
#"setosa" variable was then written into a csv file using the "write.csv" command
setosa<-iris[grep("setosa",iris$Species),]
write.csv(setosa)

#2.5
#Used the "grep" command to look for rows with the "virginica" character pattern in the "Species" column of the "iris dataset"
#This information was contained in the "virginica" variable
#Using [], the "Petal.Length" column of the "virginica" dataframe was indexed, and turned into a vector using the "c" command. This was stored in the "vpl" variable
#The "summary" command is then used to obtain the mean, max and min scores for the Petal Length of all virginica species
virginica<-iris[grep("virginica",iris$Species),]
vpl<-virginica[,c('Petal.Length')]
summary(vpl)
