// Survival of tagged fish: y survivors out of n, prior on the log-odds scale.
// TEMPLATE: complete the three lines marked TODO before fitting.
data {
  int<lower=1> n;                // fish tagged
  int<lower=0, upper=n> y;       // fish surviving
  real m0;                       // prior mean of z = logit(p)
  real<lower=0> s0;              // prior SD of z
}
parameters {
  real z;                        // log-odds of survival
}
model {
  // TODO: prior: z has a normal distribution with mean m0 and SD s0
  // TODO: likelihood: y is binomial with n trials and success probability inv_logit(z)
}
generated quantities {
  real p = inv_logit(z);         // survival probability
  // TODO: y_new = number of survivors among n new fish (use binomial_rng)
}
