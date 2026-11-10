// TEMPLATE for p3-sales-normal.stan. Copy this file to models/p3-sales-normal.stan and replace every ___ .
data {
  int<lower=1> N;
  vector[N] temp_c;                     // temperature - 20 (degrees C)
  vector[N] weekend;
  vector[N] sales;
  int<lower=1> M;                       // new days to predict
  vector[M] temp_new;
  vector[M] weekend_new;
}
parameters {
  real alpha;                           // expected sales on a 20 C weekday
  real b_temp;                          // extra ice creams per degree
  real b_weekend;                       // extra ice creams on a weekend day
  real<lower=0> sigma;
}
model {
  alpha ~ normal(30, 15);
  b_temp ~ normal(___, ___);
  b_weekend ~ normal(0, 10);
  sigma ~ exponential(0.1);
  sales ~ normal(alpha + b_temp * temp_c + b_weekend * weekend, ___);
}
generated quantities {
  vector[N] sales_rep;
  vector[N] log_lik;
  vector[M] sales_new;
  for (i in 1:N) {
    real m = alpha + b_temp * temp_c[i] + b_weekend * weekend[i];
    sales_rep[i] = normal_rng(m, sigma);
    log_lik[i] = normal_lpdf(sales[i] | m, sigma);
  }
  for (j in 1:M) sales_new[j] = normal_rng(___, sigma);
}
