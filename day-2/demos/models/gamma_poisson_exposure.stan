// Day 2 demo: counts with exposure (gamma-Poisson) in Stan
// y[i] events counted during t[i] minutes; lambda = events per minute.

data {
  int<lower=1> N;                 // number of counting sessions
  array[N] int<lower=0> y;        // counts
  vector<lower=0>[N] t;           // exposure: minutes counted
  real<lower=0> a;                // prior: Gamma(a, b), shape a, rate b
  real<lower=0> b;
  real<lower=0> t_new;            // exposure for a future session
}

parameters {
  real<lower=0> lambda;           // rate per minute
}

model {
  lambda ~ gamma(a, b);           // prior
  y ~ poisson(lambda * t);        // likelihood: mean = rate x exposure
}

generated quantities {
  real mean_new = lambda * t_new;            // expected count (a rate statement)
  int y_new = poisson_rng(lambda * t_new);   // a future count (a prediction)
}
