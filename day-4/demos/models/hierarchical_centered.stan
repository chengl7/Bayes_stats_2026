// Partial pooling (centred form): person averages come from a common distribution
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> person;
  vector[N] y;
}
parameters {
  real mu;                               // average of the person averages
  real<lower=0> tau;                     // spread between people
  vector[J] theta;                       // person averages
  real<lower=0> sigma;                   // spread within a person
}
model {
  mu ~ normal(10, 2);
  tau ~ normal(0, 1);
  sigma ~ normal(0, 2);
  theta ~ normal(mu, tau);               // the population distribution
  y ~ normal(theta[person], sigma);      // likelihood
}
