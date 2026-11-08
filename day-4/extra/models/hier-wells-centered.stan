// Partial pooling, CENTRED parameterisation (supplied for challenge C1).
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> well;
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> tau;
  real<lower=0> sigma;
  vector[J] theta;
}
model {
  mu ~ normal(45, 15);
  tau ~ normal(0, 15);
  sigma ~ normal(0, 10);
  theta ~ normal(mu, tau);
  y ~ normal(theta[well], sigma);
}
