library(class)
library(ggplot2)
library(readr)
library(tidyr)
library(GGally)
library(dplyr)
library(ISLR)
library(mdsr)
library(corrplot)
###Import dataset
my_basket <- read_csv("C:/Users/65914/Downloads/my_basket.csv")
View(my_basket)
###Basic Checks
head(my_basket)
dim(my_basket)
attach(my_basket)
###See the correlation between the elements
cor(my_basket[,-1])
M<-cor(my_basket)
corplot(M)
##Above graph is hazy, so we only see correlations for first 10 elements
ten<-cor(my_basket[c(1:10)])
corrplot(ten)
##Make the PCA 
market.pca<-prcomp(my_basket,center=TRUE, scale=TRUE)
summary(market.pca)
##Plot the pca
plot(market.pca, xlab='Principal Components',ylim(0,2), main='pac.market')