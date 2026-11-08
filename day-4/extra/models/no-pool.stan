// No pooling: each well has its own mean, with independent priors (supplied, complete).
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> well;
  vector[N] y;
}
parameters {
  vector[J] theta;
  real<lower=0> sigma;         // residual SD shared by all wells
}
model {
  theta ~ normal(45, 15);
  sigma ~ normal(0, 10);
  y ~ normal(theta[well], sigma);
}
