# Day 6 — Logistic regression, Simpson's paradox and the workflow

**Tuesday 17 November 2026 · 08:45–16:00 · Niels Jernes Vej 8A, room 0.02** (new room) · extra room for group work: 0.01

Bring your laptop with the `bayes` environment working (see the [installation guide](../installations.md)). Both exercise blocks use Stan. If Stan does not compile on your laptop, use the course environment on UCloud: see [how to use it](../ucloud.md).

## Materials

- **Slides:** [morning](day-6-slides-morning.pdf) (yes/no outcomes; probability, odds and log-odds; logistic regression; priors on the log-odds scale; a design matrix in Stan; predicted probabilities and a grouped check) and [afternoon](day-6-slides-afternoon.pdf) (Simpson's paradox; marginal versus conditional comparisons; a fair overall comparison; the Monty Hall problem; the modelling workflow; the final assignment).
- **Exercise notebooks:** [morning, Exercise A](day-6-exercises-morning.ipynb) and [afternoon, Exercise B](day-6-exercises-afternoon.ipynb). Open them in JupyterLab, select the **R (bayes)** kernel, and run the cells in order. Keep the folders `data/` and `models/` next to the notebooks.
- **Demos** shown in the lectures, to rerun afterwards: [demos/](demos/README.md).
- **Make-up and extra practice:** [make-up instructions](day-6-makeup.md) and [extra exercises](extra/day-6-extra-exercises.ipynb).

The exercises use the class's own Day 1 time games, without and with feedback (`data/timing-class.csv`): a **hit** is an attempt within 0.5 s of the target. Exercise B also uses a synthetic pilot study (`data/pilot-study.csv`).

## The day

| Time | Session |
|---|---|
| 08:45–09:45 | Lecture A: logistic regression |
| 09:45–11:10 | Exercise A: your own hits and misses in a logistic regression; priors, odds ratios, predictions and a grouped check; your group's question set |
| 11:10–11:55 | Peer review A with your partner group, and plenary |
| 11:55–12:30 | Lunch |
| 12:30–13:30 | Lecture B: Simpson's paradox, the modelling workflow, the final assignment |
| 13:30–15:00 | Exercise B: a pilot study with a paradox; the whole class: does feedback help, and does the model fit?; your group's question set |
| 15:00–15:45 | Peer review B and plenary |
| 15:45–16:00 | Daily diary on Mentimeter |

Everyone is back in the main room at **11:10** and **15:00** for peer review. Partner groups as before: 1 ↔ 2, 3 ↔ 4, 5 ↔ 6, 7 ↔ 8, 9 ↔ 10.

## Extra exercises and make-up

The [extra exercises](extra/day-6-extra-exercises.ipynb) cover the same goals with new problems and data (seedlings in a tree nursery, and the three prisoners problem), with hints. They are the make-up work if you miss Day 6 ([instructions](day-6-makeup.md)), and optional practice for everyone else.
