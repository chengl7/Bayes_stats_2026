// No pooling: a separate average for each person, each with its own prior
data {
  int<lower=1> N;
  int<lower=1> J;
  array[N] int<lower=1, upper=J> person;
  vector[N] y;
}
parameters {
  vector[J] theta;                       // person averages
  real<lower=0> sigma;
}
model {
  theta ~ normal(10, 2);
  sigma ~ normal(0, 2);
  y ~ normal(theta[person], sigma);
}
