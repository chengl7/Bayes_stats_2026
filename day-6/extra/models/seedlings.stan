// Logistic regression with a design matrix: did a seedling survive?
data {
  int<lower=1> N;                           // seedlings
  int<lower=1> K;                           // predictors (columns of X)
  matrix[N, K] X;                           // design matrix
  array[N] int<lower=0, upper=1> survived;  // 1 = survived
  vector<lower=0>[K] prior_sd;              // prior SD of each coefficient
  int<lower=0> M;                           // cases to predict
  matrix[M, K] X_new;
}
parameters {
  real alpha;
  vector[K] beta;
}
model {
  alpha ~ normal(0, 1.5);
  // TODO: the prior of beta: normal with mean 0 and SD prior_sd (one SD per column)

  // TODO: the likelihood: survived is Bernoulli with log-odds alpha + X * beta

}
generated quantities {
  vector[M] p_new;            // TODO: P(survive) for each row of X_new (use inv_logit)
  array[N] int survived_rep;  // TODO: a replicated dataset (use bernoulli_logit_rng)
}
