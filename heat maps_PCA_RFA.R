


wine_data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")

#CHeck rows of rows
head(wine_data)

#Check dimensions of dataset
dim(wine_data)

#ADd column names to the dataset
colnames(wine_data) <- c("Cvs", "Alcohol", 
                         "Malic_Acid", "Ash", "Alkalinity_of_Ash", 
                         "Magnesium", "Total_Phenols", "Flavanoids", "NonFlavanoid_Phenols",
                         "Proanthocyanins", "Color_Intensity", "Hue", "OD280/OD315_of_Diluted_Wine", 
                         "Proline")

head(wine_data)

#PLOt the heatmap
heatmap(cor(wine_data),Rowv = NA, Colv = NA) 


#Factor the classes - 1,2,3
cultivar_classes <- factor(wine_data$Cvs)
cultivar_classes


wine_data_PCA <- prcomp(scale(wine_data[,-1]))
summary(wine_data_PCA)




############################ Random forest  ###########
install.packages("titanic")
library(titanic)

head(titanic_train)

install.packages("randomForest")
install.packages("caTools")
library(randomForest)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(caTools)

train2 <- titanic_train
train2$Survived <- as.factor(train2$Survived)
train2$Pclass <- as.factor(train2$Pclass)

set.seed(1446)
split <- sample.split(train2$Survived, SplitRatio = 0.75)
sub_training_data <- subset(train2, split == TRUE)
sub_testing_data <- subset(train2, split == FALSE)




table(train2$Sex, train2$Survived)



k <- ggplot(train2, aes(Survived))
k + geom_bar(aes( fill = Sex), width=.85, colour="darkgreen") + scale_fill_brewer() +
  ylab("Survival Count (Genderwise)") +
  xlab("Survived: No = 0, Yes = 1") +
  ggtitle("Titanic Disaster: Gender Vs. Survival (Training Dataset")
