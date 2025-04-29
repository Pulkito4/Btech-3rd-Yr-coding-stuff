project_A <- c(100, 120, 130, 150, 160)
project_B <- c(90, 110, 140, 180, 220)
sd_A <- sd(project_A)
sd_B <- sd(project_B)
cat("Standard Deviation for Project A: ", sd_A, "\n")
cat("Standard Deviation for Project B: ", sd_B, "\n")
if (sd_A > sd_B) {
    cat("Project A is riskier.\n")
} else if (sd_B > sd_A) {
    cat("Project B is riskier.\n")
} else {
    cat("Both projects have the same risk.\n")
}
