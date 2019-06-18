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
