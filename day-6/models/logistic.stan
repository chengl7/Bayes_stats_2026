// Logistic regression with a design matrix
data {
  int<lower=1> N;                       // attempts
  int<lower=1> K;                       // predictors (columns of X)
  matrix[N, K] X;                       // design matrix
  array[N] int<lower=0, upper=1> y;     // 1 = hit, 0 = miss
  vector<lower=0>[K] prior_sd;          // prior SD of each coefficient (log-odds scale)
  int<lower=0> M;                       // cases to predict
  matrix[M, K] X_new;                   // their predictor values
}
parameters {
  real alpha;                           // log-odds of a hit when every predictor is 0
  vector[K] beta;                       // change in log-odds per unit of each predictor
}
model {
  alpha ~ normal(0, 1.5);
  beta ~ normal(0, prior_sd);
  y ~ bernoulli_logit(alpha + X * beta);
}
generated quantities {
  vector[M] p_new = inv_logit(alpha + X_new * beta);           // P(hit) for each case
  array[N] int y_rep = bernoulli_logit_rng(alpha + X * beta);  // a replicated dataset
}
