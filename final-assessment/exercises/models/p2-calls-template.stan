// TEMPLATE for p2-calls.stan. Copy this file to models/p2-calls.stan and replace every ___ .
data {
  int<lower=1> N;
  vector<lower=0>[N] hours_open;
  array[N] int<lower=0> calls;
  real<lower=0> a0;                     // prior shape
  real<lower=0> b0;                     // prior rate (per hour)
  real<lower=0> hours_new;              // opening hours of a future day
}
parameters {
  real<lower=0> lambda;                 // calls per hour
}
model {
  lambda ~ gamma(a0, b0);
  calls ~ poisson(___);
}
generated quantities {
  int calls_new = poisson_rng(___);
  array[N] int calls_rep;
  for (i in 1:N) calls_rep[i] = poisson_rng(lambda * hours_open[i]);
}
