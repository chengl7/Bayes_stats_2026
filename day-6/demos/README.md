# Day 6 demos

Two notebooks that reproduce the figures of the Day 6 slides, shown in the lectures and for you to rerun afterwards. Open them in JupyterLab from this folder with the **R (bayes)** kernel. The Stan model compiles the first time it is used (about a minute).

| Notebook | Slides | What it shows |
|---|---|---|
| [demo-1-logistic-regression.ipynb](demo-1-logistic-regression.ipynb) | morning | Hit or miss in the time game: why not a straight line, probability, odds and log-odds, simulating yes/no data, odds ratios, priors on the log-odds scale, the design matrix and the Stan fit, predicted probabilities for chosen cases, and a grouped predictive check |
| [demo-2-simpsons-paradox.ipynb](demo-2-simpsons-paradox.ipynb) | afternoon | A pilot study of the feedback game: feedback wins at every target and loses overall, why (the mix of targets), the kidney-stone data, two logistic models with opposite answers, a fair overall comparison, and an interaction column |

`data/slides-one-person-hits.csv` (one person, 60 attempts) and `data/slides-pilot-hits.csv` (the pilot study, 480 attempts) are **illustrative** time-game data: a hit is an attempt within 0.5 s of the target. `models/logistic.stan` is the logistic regression with a design matrix used in both notebooks.
