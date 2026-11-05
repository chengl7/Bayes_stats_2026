# Day 2 demos

Notebooks shown in the Day 2 lectures. Run them after the course to repeat what you saw, then try the list at the end of each notebook. Every section names the slide it belongs to.

Open them in JupyterLab with the **R (bayes)** kernel, from this folder (the Stan files are read from `models/`).

| Notebook | What it shows | Lecture | Stan? |
|---|---|---|---|
| `demo-1-beta-binomial.ipynb` | Bus departures (14 of 20 on time): exact posterior, prior–likelihood–posterior plot, the posterior mean as a compromise, updating one departure at a time, three priors, a grid, the same model in Stan, predicting the next 10 departures | morning | yes |
| `demo-2-distribution-connections.ipynb` | The "Relationships between distributions" slides, checked by simulation: Bernoulli → binomial → Poisson (4, 10 and 1000 slices) → normal, Poisson counts ↔ exponential waiting times, counts over t minutes (exposure), uncertain rate → negative binomial, uncertain probability → beta-binomial, Beta(1, 1) = uniform. For orientation; you do not need to memorise it | afternoon | no |
| `demo-3-gamma-poisson-exposure.ipynb` | Bike counts in sessions of different length: count, exposure and rate, the gamma–Poisson update, the same model in Stan, a rate versus a future count, and a preview of checking the model against the data | afternoon | yes |

`models/beta_binomial.stan` and `models/gamma_poisson_exposure.stan` are the two Stan programs. The first run of a Stan notebook compiles the model, which takes about a minute.

All data are invented for teaching.
