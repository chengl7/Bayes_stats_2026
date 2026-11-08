// Complete pooling: one average time for everybody
data {
  int<lower=1> N;                        // all attempts
  int<lower=1> J;                        // number of people
  array[N] int<lower=1, upper=J> person; // who made attempt i
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ normal(10, 2);
  sigma ~ normal(0, 2);
  y ~ normal(mu, sigma);
}
