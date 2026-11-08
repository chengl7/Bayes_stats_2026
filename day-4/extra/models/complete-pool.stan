// Complete pooling: every well has the same mean mu (supplied, complete).
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> well;
  vector[N] y;                 // nitrate, mg/L
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ normal(45, 15);
  sigma ~ normal(0, 10);
  y ~ normal(mu, sigma);
}
generated quantities {
  vector[J] theta = rep_vector(mu, J);   // same mean for all wells
}
