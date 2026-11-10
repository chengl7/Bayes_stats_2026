// TEMPLATE for p4-reviews-noncentred.stan. Copy this file to models/p4-reviews-noncentred.stan and replace every ___ .
data {
  int<lower=1> J;
  array[J] int<lower=0> reviews;
  array[J] int<lower=0> thumbs_up;
}
parameters {
  real mu;
  real<lower=0> tau;
  vector[J] z;
}
transformed parameters {
  vector[J] theta = ___;
}
model {
  mu ~ normal(1, 1);
  tau ~ normal(0, 1);
  z ~ ___;
  thumbs_up ~ binomial_logit(reviews, theta);
}
generated quantities {
  vector[J] p = inv_logit(theta);
  real p_new = inv_logit(normal_rng(___, ___));       // a new restaurant
  vector[J] log_lik;
  array[J] int is_best;
  for (j in 1:J) log_lik[j] = binomial_logit_lpmf(thumbs_up[j] | reviews[j], theta[j]);
  for (j in 1:J) is_best[j] = (p[j] == max(p));
}
