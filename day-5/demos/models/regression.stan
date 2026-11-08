// Linear regression: recorded time against target time
data {
  int<lower=1> N;
  vector[N] x;                 // target - 10 (seconds)
  vector[N] y;                 // recorded time (seconds)
}
parameters {
  real alpha;                  // mean recorded time at target 10 s
  real beta;                   // extra recorded seconds per extra target second
  real<lower=0> sigma;         // spread around the line
}
model {
  alpha ~ normal(10, 2);
  beta ~ normal(1, 0.5);
  sigma ~ normal(0, 2);
  y ~ normal(alpha + beta * x, sigma);
}
generated quantities {
  real mu_20 = alpha + beta * 10;          // mean recorded time at target 20 s
  real y_20 = normal_rng(mu_20, sigma);    // one attempt at target 20 s
  array[N] real y_rep = normal_rng(alpha + beta * x, sigma);  // a replicated dataset
}
