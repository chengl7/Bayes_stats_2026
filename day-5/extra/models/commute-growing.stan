// Commute time against route length: spread grows with the route length
data {
  int<lower=1> N;
  vector[N] x;                 // route length - 6 (km)
  vector[N] y;                 // commute time (minutes)
}
parameters {
  real alpha;                  // mean commute time on a 6-km route (minutes)
  real beta;                   // extra minutes per extra km
  real<lower=0> sigma;         // spread on a 6-km route (minutes)
}
model {
  alpha ~ normal(20, 5);
  beta ~ normal(3, 1);
  sigma ~ normal(0, 5);
  // TODO: change the likelihood so that the spread on a route of km kilometres
  //       is sigma * km / 6 (remember km = x + 6)
  y ~ normal(alpha + beta * x, sigma);
}
generated quantities {
  real mu_15 = alpha + beta * 9;           // mean commute time on a 15-km route
  real y_15 = normal_rng(mu_15, sigma);   // TODO: the spread on a 15-km route
}
