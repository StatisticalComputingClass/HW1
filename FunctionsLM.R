# Generate n-dimensional response Y that follows linear regression model Y = Xbeta + epsilon, where epsilon is normal zero with variance sigma^2 independent across samples. Seed should be set at the beginning of the function
# X - design matrix
# beta - given parameter vector
# sigma - standard deviation of the noise
# seed  - starting seed value
generateY <- function(X, beta, sigma, seed = 5832652){
  #Set seed and generate Y following linear model
  
  # Return Y
  return(Y)
}

# Calculate beta_LS - least-squares solution, do not use lm function
# X - design matrix
# Y - response
calculateBeta <- function(X, Y){
  # Calculate beta_LS
  
  # Return beta
  return(beta_LS)
}

# Calculate estimation error, defined as ||beta - beta_LS||_2^2
calculateEstimationError <- function(beta, beta_LS){
  # Calculate and return error
}


# Calculate prediction error, defined as ||Y - X beta_LS||_2^2
calculatePredictionError <- function(Y, X, beta_LS){
  # Calculate and return error
}