// One person's attempts: y[i] ~ Normal(mu, sigma)
data {
  int<lower=1> N;            // number of attempts
  vector[N] y;               // recorded times (seconds)
}
parameters {
  real mu;                   // the person's average time
  real<lower=0> sigma;       // spread from attempt to attempt
}
model {
  mu ~ normal(10, 2);        // prior
  sigma ~ normal(0, 2);      // prior (half-normal, because sigma > 0)
  y ~ normal(mu, sigma);     // likelihood
}
generated quantities {
  real y_new = normal_rng(mu, sigma);   // her next attempt
}
