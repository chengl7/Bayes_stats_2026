// Nitrate in one well: y[i] ~ Normal(mu, sigma).
// TEMPLATE: complete the TODO lines.
data {
  int<lower=1> N;
  vector[N] y;                 // nitrate, mg/L
}
parameters {
  // TODO: declare mu (any real value) and sigma (positive)
}
model {
  mu ~ normal(45, 15);         // prior: typical groundwater nitrate in this region, mg/L
  sigma ~ normal(0, 10);       // half-normal prior on the sample-to-sample SD, mg/L
  // TODO: likelihood
}
generated quantities {
  // TODO: y_new, one new sample from this well
}
