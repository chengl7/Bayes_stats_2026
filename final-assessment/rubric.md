# Scoring rubric — final assignment

The final assignment counts for **50 % of the course grade** (see [../grading.md](../grading.md)). It has seven independent problems and is scored as a whole out of **100 points**, with **20 points in each of five areas**. Every part of every problem states exactly what to report, so marking checks whether the requested results are there and correct.

Within each area the assessor first chooses a band from the share of that area's items (listed below) that are present and correct, then a score within the band:

| Band | Points (per area) | Share of the area's items present and correct |
|---|---|---|
| Excellent | 17–20 | 90 % or more |
| Satisfactory | 12–16 | 60–89 % |
| Weak | 5–11 | 25–59 % |
| Missing | 0–4 | less than 25 % |

General principles:

- The problems are independent. An item missing in one problem does not affect items in other problems.
- "Correct" means within rounding and Monte Carlo variation of the worked solution. Results from simulation or MCMC are not expected to match it digit for digit.
- A result that follows correctly from an earlier mistake in the same problem counts as correct (no double penalty).
- Small slips (a typo, one wrong decimal) cost little.
- If a student cannot explain a central part of the submission when asked, the points for that part are not awarded.

## 1. Model formulation

Items: the blanks in the Stan templates (Problems 2–4) filled in, and the Stan programs written for Problems 5–7, so that the programs implement the models as specified (likelihood, priors, exposure, link function, design matrix, non-centred form, generated quantities); the conjugate posterior parameters.

*Evidence:* 1a, 2a, 2b, 2c, 3b, 3d, 4b, 5b, 6a, 7a.

## 2. Bayesian reasoning

Items: the requested posterior summaries, posterior probabilities and predictive quantities.

*Evidence:* 1a, 1c, 2a, 2b, 2d, 3e, 4a, 4d, 5b, 5c, 7b.

## 3. Computation

Items: the diagnostics reported for every Stan fit (largest R-hat, smallest bulk ESS, divergences, max-treedepth hits, smallest E-BFMI); the Monte Carlo standard error in 2b; the diagnosis of the supplied programs and the repaired fits (2c, 4b); the simulation table in Problem 6; the notebook runs from a fresh kernel.

*Evidence:* 2b, 2c, 3b, 3d, 4b, 5b, 6a, 6b, 7a.

## 4. Model checking and sensitivity

Items: the prior and posterior predictive checks (statistic, observed value, p-value or interval), the results under different priors, the LOO comparison, the pooling comparison, and the yes/no answers that follow from them.

*Evidence:* 1a, 1b, 3a, 3c, 3d, 4c, 5a, 5d, 6b, 6c, 7a, 7b.

## 5. Communication

Items: results reported in the requested form (tables, rounding, units); the requested figures; the short answers given exactly as asked (yes/no, a name, a model); the summary for the baker in 7c with all five rows, numbers and units.

*Evidence:* all parts; in particular 1a, 3a, 4a, 4c, 5c, 6b, 7b and 7c.

## Total, outcome and feedback

The assessor records the points per area (0–20) with a line of feedback each, and the total out of 100. The total counts for 50 % of the course grade. The course is passed with a weighted total of at least 70 % together with the attendance requirement (see [../grading.md](../grading.md)). Any revision opportunity and its deadline follow the arrangements announced by the course organiser.
