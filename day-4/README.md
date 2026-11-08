# Day 4 — Joint and hierarchical models

**Friday 13 November 2026 · 08:45–16:00 · Kroghstræde 3, room 1.104** (not 4.110) · extra rooms for group work: 4.129 and 5.149

Bring your laptop with the `bayes` environment working (see the [installation guide](../installations.md)). Both exercise blocks use Stan. If Stan does not compile on your laptop, use the course environment on UCloud: see [how to use it](../ucloud.md).

## Materials

- **Slides:** [morning](day-4-slides-morning.pdf) (two unknowns: the normal model with μ and σ; joint, marginal and conditional posteriors; marginalising with draws; an average versus one attempt) and [afternoon](day-4-slides-afternoon.pdf) (grouped data; complete, no and partial pooling; exchangeability; shrinkage; the funnel and non-centring; predicting for a known or a new person).
- **Exercise notebooks:** [morning, Exercise A](day-4-exercises-morning.ipynb) and [afternoon, Exercise B](day-4-exercises-afternoon.ipynb). Open them in JupyterLab, select the **R (bayes)** kernel, and run the cells in order. Keep the folders `data/` and `models/` next to the notebooks.
- **Demos** shown in the lectures, to rerun afterwards: [demos/](demos/README.md). They reproduce the slides' figures; each Stan model compiles the first time (about a minute).
- **Make-up and extra practice:** [make-up instructions](day-4-makeup.md) and [extra exercises](extra/day-4-extra-exercises.ipynb).

The exercises use the Day 1 time game (10-second target, no feedback). If the class's data are provided as `data/timing-class.csv`, the notebooks use them; otherwise they use `data/timing-backup.csv`, synthetic data for 15 fictional people.

## The day

| Time | Session |
|---|---|
| 08:45–09:45 | Lecture A: two unknowns, joint and marginal posteriors |
| 09:45–11:10 | Exercise A: one person's attempts in Stan, joint and marginal draws, average versus next attempt; your group's question set |
| 11:10–11:55 | Peer review A with your partner group, and plenary |
| 11:55–12:30 | Lunch |
| 12:30–13:30 | Lecture B: hierarchical models, pooling and shrinkage |
| 13:30–15:00 | Exercise B: three pooling models on the class data, shrinkage, a known versus a new person; your group's question set |
| 15:00–15:45 | Peer review B and plenary |
| 15:45–16:00 | Daily diary on Mentimeter |

Everyone is back in the main room at **11:10** and **15:00** for peer review. Partner groups as before: 1 ↔ 2, 3 ↔ 4, 5 ↔ 6, 7 ↔ 8, 9 ↔ 10.

## Extra exercises and make-up

The [extra exercises](extra/day-4-extra-exercises.ipynb) cover the same goals with new problems and data, with hints. They are the make-up work if you miss Day 4 ([instructions](day-4-makeup.md)), and optional practice for everyone else.
