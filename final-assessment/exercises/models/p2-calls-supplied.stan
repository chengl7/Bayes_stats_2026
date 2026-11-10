// Problem 2c (supplied, do not edit): a call-rate model written by a colleague.
// The hourly call rate is lambda = exp(a + b).
data {
  int<lower=1> N;
  vector<lower=0>[N] hours_open;
  array[N] int<lower=0> calls;
}
parameters {
  real a;
  real b;
}
transformed parameters {
  real<lower=0> lambda = exp(a + b);
}
model {
  // no prior statements: a and b get flat (improper) priors
  calls ~ poisson(lambda * hours_open);
}
