# Day 5 — Regression: build, fit, predict, check

**Monday 16 November 2026 · 08:45–16:00 · Pontoppidanstræde 101, room 1.001**

Bring your laptop with the `bayes` environment working (see the [installation guide](../installations.md)). The afternoon exercises use Stan. If Stan does not compile on your laptop, use the course environment on UCloud: see [how to use it](../ucloud.md).

## Materials

- **Slides:** [morning](day-5-slides-morning.pdf) (regression as a model that generates data; choosing a scale for the predictor; priors and prior predictive simulation; the regression in Stan) and [afternoon](day-5-slides-afternoon.pdf) (reading the fit; the mean versus one new attempt; posterior predictive checks; revising the model; an unusual observation and Student-t errors; always plot).
- **Exercise notebooks:** [morning, Exercise A](day-5-exercises-morning.ipynb) and [afternoon, Exercise B](day-5-exercises-afternoon.ipynb). Open them in JupyterLab, select the **R (bayes)** kernel, and run the cells in order. Keep the folders `data/` and `models/` next to the notebooks.
- **Demos** shown in the lectures, to rerun afterwards: [demos/](demos/README.md). They reproduce the slides' figures; each Stan model compiles the first time (about a minute).
- **Make-up and extra practice:** [make-up instructions](day-5-makeup.md) and [extra exercises](extra/day-5-extra-exercises.ipynb).

The exercises use the Day 1 time game without feedback, **all three targets** (5, 10 and 15 s), for one person. If the class's data are provided as `data/timing-class.csv`, the notebooks use them; otherwise they use `data/timing-backup.csv`, synthetic data for 15 fictional people.

## The day

| Time | Session |
|---|---|
| 08:45–09:45 | Lecture A: regression as a generative model, scales, priors, prior predictive simulation |
| 09:45–11:10 | Exercise A: one person's attempts against the target, priors and prior predictive simulation, fake data, the Stan program; your group's question set |
| 11:10–11:55 | Peer review A with your partner group, and plenary |
| 11:55–12:30 | Lunch |
| 12:30–13:30 | Lecture B: fit, mean versus new attempt, posterior predictive checks, robust regression |
| 13:30–15:00 | Exercise B: fit, predict at 20 s, check the spread at each target, revise the model; your group's question set |
| 15:00–15:45 | Peer review B and plenary |
| 15:45–16:00 | Daily diary on Mentimeter |

Everyone is back in the main room at **11:10** and **15:00** for peer review. Partner groups as before: 1 ↔ 2, 3 ↔ 4, 5 ↔ 6, 7 ↔ 8, 9 ↔ 10.

## Extra exercises and make-up

The [extra exercises](extra/day-5-extra-exercises.ipynb) cover the same goals with a new problem and data (a cyclist's commute times), with hints. They are the make-up work if you miss Day 5 ([instructions](day-5-makeup.md)), and optional practice for everyone else.
