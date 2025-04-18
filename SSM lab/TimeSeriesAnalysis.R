# Load the dataset
data("AirPassengers")

# Check structure and summary
str(AirPassengers)
summary(AirPassengers)

# Plot the time series
plot(AirPassengers, main="Monthly Air Passengers (1949-1960)",
     ylab="Number of Passengers", xlab="Year", col="blue")

# Check for seasonality and trend using decomposition
decomposed <- decompose(AirPassengers)
plot(decomposed)

# Log transformation to stabilize variance
log_data <- log(AirPassengers)

# Differencing to remove trend and seasonality
diff_log <- diff(log_data, differences = 1)

# Plot the differenced log data
plot(diff_log, main="Differenced Log of AirPassengers")

# Fit ARIMA model
library(forecast)
model <- auto.arima(log_data)
summary(model)

# Forecast for next 12 months
forecasted <- forecast(model, level=c(95), h=12)

# Plot forecast
plot(forecasted, main="Forecast for Air Passengers")
