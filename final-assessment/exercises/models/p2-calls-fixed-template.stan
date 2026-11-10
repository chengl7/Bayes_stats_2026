// TEMPLATE for p2-calls-fixed.stan. Copy this file to models/p2-calls-fixed.stan and replace every ___ .
data {
  int<lower=1> N;
  vector<lower=0>[N] hours_open;
  array[N] int<lower=0> calls;
}
parameters {
  real log_lambda;
}
transformed parameters {
  real<lower=0> lambda = ___;
}
model {
  log_lambda ~ normal(___, 0.5);
  calls ~ poisson(lambda * hours_open);
}
