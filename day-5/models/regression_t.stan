// Robust regression: Student-t errors with 4 degrees of freedom
data {
  int<lower=1> N;
  vector[N] x;                 // target - 10 (seconds)
  vector[N] y;                 // recorded time (seconds)
}
parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;         // scale of the t distribution (not its SD)
}
model {
  alpha ~ normal(10, 2);
  beta ~ normal(1, 0.5);
  sigma ~ normal(0, 2);
  y ~ student_t(4, alpha + beta * x, sigma);
}
