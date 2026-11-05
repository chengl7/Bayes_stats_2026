// Day 2 demo: the beta-binomial model in Stan
// y successes out of n trials, unknown success probability theta.

data {
  int<lower=0> n;                 // number of trials
  int<lower=0, upper=n> y;        // number of successes
  real<lower=0> a;                // prior: Beta(a, b)
  real<lower=0> b;
}

parameters {
  real<lower=0, upper=1> theta;   // success probability
}

model {
  theta ~ beta(a, b);             // prior
  y ~ binomial(n, theta);         // likelihood
}

generated quantities {
  // a prediction: successes in the next 10 trials
  int y_next10 = binomial_rng(10, theta);
}
