// Problem 4b (supplied, do not edit): partial pooling of restaurant thumbs-up rates,
// written in the centred form.
data {
  int<lower=1> J;                       // restaurants
  array[J] int<lower=0> reviews;
  array[J] int<lower=0> thumbs_up;
}
parameters {
  real mu;                              // average log-odds of a thumbs-up
  real<lower=0> tau;                    // spread of restaurants on the log-odds scale
  vector[J] theta;                      // each restaurant's log-odds
}
model {
  mu ~ normal(1, 1);
  tau ~ normal(0, 1);
  theta ~ normal(mu, tau);
  thumbs_up ~ binomial_logit(reviews, theta);
}
