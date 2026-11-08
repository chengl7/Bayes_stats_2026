// Commute time against route length: linear regression with constant spread
data {
  int<lower=1> N;
  vector[N] x;                 // route length - 6 (km)
  vector[N] y;                 // commute time (minutes)
}
parameters {
  real alpha;                  // mean commute time on a 6-km route (minutes)
  real beta;                   // extra minutes per extra km
  real<lower=0> sigma;         // spread of single trips around the line (minutes)
}
model {
  // TODO: the three priors from Part A (alpha, beta, sigma)

  // TODO: the likelihood: y is normal around the line alpha + beta * x with SD sigma


}
generated quantities {
  real mu_15 = 0;   // TODO: mean commute time on a 15-km route (what is x for 15 km?)
  real y_15 = 0;    // TODO: one simulated trip on a 15-km route (use normal_rng)
}
