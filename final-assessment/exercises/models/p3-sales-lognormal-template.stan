// TEMPLATE for p3-sales-lognormal.stan. Copy this file to models/p3-sales-lognormal.stan and replace every ___ .
data {
  int<lower=1> N;
  vector[N] temp_c;
  vector[N] weekend;
  vector<lower=0>[N] sales;
  int<lower=1> M;
  vector[M] temp_new;
  vector[M] weekend_new;
}
parameters {
  real alpha;                           // log of typical sales on a 20 C weekday
  real b_temp;                          // change in log sales per degree
  real b_weekend;
  real<lower=0> sigma;
}
model {
  alpha ~ normal(log(30), 0.5);
  b_temp ~ normal(0, 0.1);
  b_weekend ~ normal(0, 0.5);
  sigma ~ exponential(___);
  sales ~ ___(alpha + b_temp * temp_c + b_weekend * weekend, sigma);
}
generated quantities {
  vector[N] sales_rep;
  vector[N] log_lik;
  vector[M] sales_new;
  for (i in 1:N) {
    real m = alpha + b_temp * temp_c[i] + b_weekend * weekend[i];
    sales_rep[i] = lognormal_rng(m, sigma);
    log_lik[i] = ___(sales[i] | m, sigma);
  }
  for (j in 1:M) sales_new[j] = lognormal_rng(alpha + b_temp * temp_new[j] + b_weekend * weekend_new[j], sigma);
}
