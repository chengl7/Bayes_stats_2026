// Partial pooling (non-centred form): person averages come from a common distribution
data {
  int<lower=1> N;                        // all attempts
  int<lower=1> J;                        // number of people
  array[N] int<lower=1, upper=J> person; // who made attempt i
  vector[N] y;                           // recorded times (s)
}
parameters {
  real mu;                               // average of the person averages
  real<lower=0> tau;                     // spread between people
  vector[J] z;                           // standardised person effects
  real<lower=0> sigma;                   // spread within a person
}
transformed parameters {
  vector[J] theta = mu + tau * z;        // person averages
}
model {
  mu ~ normal(10, 2);
  tau ~ normal(0, 1);
  sigma ~ normal(0, 2);
  z ~ std_normal();                      // implies theta ~ normal(mu, tau)
  y ~ normal(theta[person], sigma);      // likelihood
}
generated quantities {
  // next attempt by each person in the data
  array[J] real y_next = normal_rng(theta, sigma);
  // a new person: first her average, then her attempt
  real theta_new = normal_rng(mu, tau);
  real y_new_person = normal_rng(theta_new, sigma);
}
