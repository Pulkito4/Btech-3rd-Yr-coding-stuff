set.seed(123)
n <- 1000
lifespans <- rnorm(n, mean = 1000, sd = 200)

# 1. Visual Analysis: Histogram
hist(lifespans, main = "Histogram of Bulb Lifespans", xlab = "Lifespan (hours)", col = "lightblue", breaks = 30)

# 2. Probability Calculations
prob_less_800 <- pnorm(800, mean = 1000, sd = 200)
prob_more_1200 <- 1 - pnorm(1200, mean = 1000, sd = 200)

# 3. Defective Rates (assuming defective = lifespan < 800)
defective_count <- sum(lifespans < 800)
expected_defect_rate <- prob_less_800 * n

# 4. Compare Distributions
uniform_sample <- runif(n, min = 600, max = 1400)
exp_sample <- rexp(n, rate = 1/1000)

mean_normal <- mean(lifespans)
var_normal <- var(lifespans)
mean_uniform <- mean(uniform_sample)
var_uniform <- var(uniform_sample)
mean_exp <- mean(exp_sample)
var_exp <- var(exp_sample)

# 5. Hypothesis Test
t_test_result <- t.test(lifespans, mu = 1000)

cat("1. Probability bulb lasts < 800 hours:", prob_less_800, "\n")
cat("2. Probability bulb lasts > 1200 hours:", prob_more_1200, "\n")
cat("3. Simulated defective bulbs:", defective_count, "\n")
cat("   Expected defective count:", round(expected_defect_rate), "\n")
cat("4. Distribution Comparison:\n")
cat("   Normal:  Mean =", mean_normal, ", Variance =", var_normal, "\n")
cat("   Uniform: Mean =", mean_uniform, ", Variance =", var_uniform, "\n")
cat("   Exponential: Mean =", mean_exp, ", Variance =", var_exp, "\n")
cat("5. T-Test:\n")
print(t_test_result)

