// Counts with exposure: count[i] ~ Poisson(lambda * hours[i]), Gamma(a0, b0) prior on lambda.
// TEMPLATE (optional challenge C2): write the three blocks.
// Pattern: the Day 2 afternoon slide "The same model in Stan".
data {
  // TODO: N, the counts, the hours, and the prior settings a0 and b0
}
parameters {
  // TODO: a positive rate lambda
}
model {
  // TODO: prior and likelihood
}
