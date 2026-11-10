// Hierarchical regression: every person has her own intercept and slope,
// drawn from a common population (non-centred form)
data {
  int<lower=1> N;                        // attempts
  int<lower=1> J;                        // people
  array[N] int<lower=1, upper=J> person; // person of each attempt
  vector[N] x;                           // target - 10 (s)
  vector[N] y;                           // recorded time (s)
}
parameters {
  real mu_alpha;                         // population mean of the intercepts
  real mu_beta;                          // population mean of the slopes
  real<lower=0> tau_alpha;               // spread of intercepts between people
  real<lower=0> tau_beta;                // spread of slopes between people
  vector[J] z_alpha;
  vector[J] z_beta;
  real<lower=0> sigma;                   // spread of single attempts at a 10-s target
}
transformed parameters {
  vector[J] alpha = mu_alpha + tau_alpha * z_alpha;   // each person's mean at 10 s
  vector[J] beta = mu_beta + tau_beta * z_beta;       // each person's slope
}
model {
  mu_alpha ~ normal(10, 2);
  mu_beta ~ normal(1, 0.5);
  tau_alpha ~ normal(0, 2);
  tau_beta ~ normal(0, 0.5);
  z_alpha ~ std_normal();
  z_beta ~ std_normal();
  sigma ~ normal(0, 2);
  y ~ normal(alpha[person] + beta[person] .* x, sigma * (x + 10) / 10);
}
generated quantities {
  real alpha_new = normal_rng(mu_alpha, tau_alpha);                 // a new person
  real beta_new = normal_rng(mu_beta, tau_beta);
  real y_20_new = normal_rng(alpha_new + beta_new * 10, sigma * 2); // her one attempt at 20 s
}
