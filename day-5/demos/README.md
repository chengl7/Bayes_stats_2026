# Day 5 demos

Two notebooks that reproduce the figures of the Day 5 slides, shown in the lectures and for you to rerun afterwards. Open them in JupyterLab from this folder with the **R (bayes)** kernel. Each Stan model compiles the first time it is used (about a minute each).

| Notebook | Slides | What it shows |
|---|---|---|
| [demo-1-regression-generative.ipynb](demo-1-regression-generative.ipynb) | morning | One person's attempts at targets of 5, 10 and 15 s: regression as a model that generates data, centring the predictor, prior predictive simulation (sensible versus vague priors), fake data from the prior, and the Stan program |
| [demo-2-fit-predict-check.ipynb](demo-2-fit-predict-check.ipynb) | afternoon | The fit, the mean versus one attempt at 20 s, prediction bands, the posterior predictive check of the spread at each target, residuals, the revised growing-spread model, an unusual attempt with normal and Student-t errors, Anscombe's quartet, and a hierarchical regression for the whole class (individual lines with a common trend) |

`data/slides-one-person.csv` contains the slides' **illustrative** time-game data (one person, 30 attempts, ten at each target, no feedback); `data/timing-class.csv` is the class's own Day 1 data, used in the last section. `models/` contains the Stan programs.
