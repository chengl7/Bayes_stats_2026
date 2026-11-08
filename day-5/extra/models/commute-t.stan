// Commute time against route length: robust regression with Student-t errors
data {
  int<lower=1> N;
  vector[N] x;                 // route length - 6 (km)
  vector[N] y;                 // commute time (minutes)
}
parameters {
  real alpha;                  // mean commute time on a 6-km route (minutes)
  real beta;                   // extra minutes per extra km
  real<lower=0> sigma;         // scale of the t distribution (not its SD)
}
model {
  alpha ~ normal(20, 5);
  beta ~ normal(3, 1);
  sigma ~ normal(0, 5);
  y ~ student_t(4, alpha + beta * x, sigma);
}
generated quantities {
  real mu_15 = alpha + beta * 9;           // mean commute time on a 15-km route
  real y_15 = student_t_rng(4, mu_15, sigma);    // one trip on a 15-km route
}
