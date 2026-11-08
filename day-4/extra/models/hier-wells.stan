// Partial pooling across wells, NON-CENTRED parameterisation.
// theta[j] = mu + tau * z[j], with z[j] ~ Normal(0, 1)  <=>  theta[j] ~ Normal(mu, tau).
// TEMPLATE: complete the TODO lines.
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> well;
  vector[N] y;
}
parameters {
  real mu;                     // mean of the well means
  real<lower=0> tau;           // SD between well means
  real<lower=0> sigma;         // SD between samples within a well
  vector[J] z;                 // standardised well effects
}
transformed parameters {
  // TODO: vector[J] theta = ...
}
model {
  mu ~ normal(45, 15);
  tau ~ normal(0, 15);
  sigma ~ normal(0, 10);
  // TODO: prior for z
  // TODO: likelihood using theta[well]
}
generated quantities {
  // TODO: theta_new, the mean of a NEW well from the same region
  // TODO: y_new_well, one sample from that new well
}
