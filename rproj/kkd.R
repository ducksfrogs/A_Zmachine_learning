dataset = read.csv('../data/Salary_Data.csv')
library(caTools)
install.packages('caTools')
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split== TRUE)
test_set = subset(dataset, split==TRUE)
regressor = lm(formula = Salary~YearsExperience,
data = training_set)
y_pred = predict(regressor,newdata = test_set)
test_set = subset(dataset, split==FALSE)
regressor = lm(formula = Salary~YearsExperience,
data = training_set)
y_pred = predict(regressor,newdata = test_set)
install.packages('ggplot2')
ggplot() +
geom_point(aes(x= training_set$YearsExperience,
y=training_set$Salary),
color = 'red') +
geom_line(aes(x = training_set$Salary,
y = predict(regressor, newdata = training_set)
),
color = 'blue') +
ggtitle('Salary vs Experiance (training set)') +
xlab('years of experience') +
ylab('Salary')
ggplot() +
geom_point(aes(x= training_set$YearsExperience,
y=training_set$Salary),
color = 'red') +
geom_line(aes(x = training_set$YearsExperience,
y = predict(regressor, newdata = training_set)
color = 'blue') +
ggtitle('Salary vs Experiance (training set)') +
xlab('years of experience') +
ylab('Salary')
ggplot() +
geom_point(aes(x= test_set$YearsExperience,
y=test_set$Salary),
y=test_set$Salary),
color = 'red') +
geom_line(aes(x = training_set$YearsExperience,
y = predict(regressor, newdata = training_set)
),
color = 'blue') +
ggtitle('Salary vs Experiance (training set)') +
xlab('years of experience') +
ylab('Salary')
dataset = read.csv('../data/50_Startups.csv')
View(dataset)
library(caTools)
set.seed(123)
dataset$State <- factor(dataset$State,
levels = c('New York', 'California', 'Florida'),
labels = c(1,2,3))
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split=TRUE)
test_set = subset(dataset, split= FALSE)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split== FALSE)
View(training_set)
View(test_set)
~ .,
data = training_se
regressor = lm(formula = Profit ~ .,
data = training_set)
View(regressor)
summary(regressor)
regressor2 = lm(formula = Profit ~ R.D.Spend,
data = training_set)
summary(regressor2)
y_pred = predict(regressor, newdata = test_set)
y_pred
View(test_set)
y_pred2 = predict(regressor2, newdata = test_set)
y_pred2
dataset = read.csv('../data/50_Startups.csv')
library(caTools)
set.seed(123)
dataset$State <- factor(dataset$State,
levels = c('New York', 'California', 'Florida'),
labels = c(1,2,3))
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split== FALSE)
regressor = lm(formula = Profit ~ .,
data = training_set)
regressor2 = lm(formula = Profit ~ R.D.Spend,
data = training_set)
y_pred = predict(regressor, newdata = test_set)
y_pred2 = predict(regressor2, newdata = test_set)
regressor3 = lm(formula = Profit ~ R.D.Spend +
Administration+
Marketing.Spend + State,
data = dataset)
summary(regressor3)
regressor3 = lm(formula = Profit ~ R.D.Spend +
Administration+
Marketing.Spend + State,
data = dataset)
summary(regressor3)
View(dataset)
summary(regressor3)
regressor3 = lm(formula = Profit ~ R.D.Spend +
Administration+
Marketing.Spend,
data = dataset)
summary(regressor3)
summary(regressor)
install.packages("caTools")
install.packages('ggplot2')
