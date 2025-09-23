setwd("C:\\Users\\thinu\\OneDrive - Sri Lanka Institute of Information Technology\\SLIIT\\2nd year\\1st semester\\PS\\IT24101204-Lab8")
weights <- scan("Exercise - LaptopsWeights.txt", skip = 1)


population_mean <- mean(weights)
population_sd <- sd(weights)


population_mean
population_sd

set.seed(123)
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_sds[i] <- sd(sample)
}


mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means

standard_error_theoretical <- population_sd / sqrt(6)
standard_error_theoretical
