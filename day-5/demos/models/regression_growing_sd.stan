// Linear regression whose spread grows in proportion to the target
data {
  int<lower=1> N;
  vector[N] x;                 // target - 10 (seconds)
  vector[N] y;                 // recorded time (seconds)
}
parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;         // spread at target 10 s
}
model {
  alpha ~ normal(10, 2);
  beta ~ normal(1, 0.5);
  sigma ~ normal(0, 2);
  y ~ normal(alpha + beta * x, sigma * (x + 10) / 10);   // spread proportional to the target
}
generated quantities {
  real mu_20 = alpha + beta * 10;
  real y_20 = normal_rng(mu_20, sigma * 2);
  array[N] real y_rep = normal_rng(alpha + beta * x, sigma * (x + 10) / 10);
}
