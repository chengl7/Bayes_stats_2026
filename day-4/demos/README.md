# Day 4 demos

Two notebooks that reproduce the figures of the Day 4 slides, shown in the lectures and for you to rerun afterwards. Open them in JupyterLab from this folder with the **R (bayes)** kernel. Each Stan model compiles the first time it is used (about a minute each).

| Notebook | Slides | What it shows |
|---|---|---|
| [demo-1-two-unknowns.ipynb](demo-1-two-unknowns.ipynb) | morning | One person's attempts: the posterior of (μ, σ) on a grid, marginals and conditionals, the same model in Stan, her average versus her next attempt, and what changes with 100 attempts |
| [demo-2-pooling-and-shrinkage.ipynb](demo-2-pooling-and-shrinkage.ipynb) | afternoon | The class: complete, no and partial pooling, shrinkage and the weight w, predictions for a known and a new person, and (change one number) fewer attempts, more shrinkage and the funnel |

`data/slides-class-timing.csv` contains the slides' **illustrative** time-game data (12 people, 2–10 attempts each at waiting 10 seconds). `models/` contains the Stan programs, the same as in `../models/`.
