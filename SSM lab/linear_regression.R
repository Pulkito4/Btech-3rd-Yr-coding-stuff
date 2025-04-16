data(mtcars)  # Load built-in dataset

# View the first few rows
head(mtcars)

# Select relevant columns
data <- mtcars[, c("wt", "mpg")]

# Split the data (70% training, 30% testing)
set.seed(123)  # for reproducibility
split <- sample.split(data$mpg, SplitRatio = 0.7)
train_data <- subset(data, split == TRUE)
test_data <- subset(data, split == FALSE)
# Build the model on training data
model <- lm(mpg ~ wt, data = train_data)

# Summary of model
summary(model)
# Predict on test data
predictions <- predict(model, newdata = test_data)

# Actual vs Predicted
results <- data.frame(Actual = test_data$mpg, Predicted = predictions)
print(results)

# Plot regression line
plot(data$wt, data$mpg, main = "Linear Regression: MPG vs Weight", 
     xlab = "Weight", ylab = "Miles Per Gallon", pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
legend("topright", legend = "Regression Line", col = "red", lwd = 2)