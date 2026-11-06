// Day 3: the beta-binomial model in Stan
// y successes in n trials, unknown success probability p, prior Beta(a, b).

data {
  int<lower=0> n;                 // number of trials
  int<lower=0, upper=n> y;        // number of successes
  real<lower=0> a;                // prior: Beta(a, b)
  real<lower=0> b;
}

parameters {
  real<lower=0, upper=1> p;       // success probability
}

model {
  p ~ beta(a, b);                 // prior
  y ~ binomial(n, p);             // likelihood
}

generated quantities {
  // a prediction: successes in n new trials
  int y_new = binomial_rng(n, p);
}
