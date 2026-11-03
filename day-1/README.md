# Day 1 — R, JupyterLab, probability and a first update

**Monday 9 November 2026 · 08:45–16:00 · Pontoppidanstræde 101, room 1.001**

Bring your laptop. If your software is not working yet, there is time for setup help in the morning; see the [installation guide](../installations.md). No Stan model is fitted on Day 1.

## Materials

- **Slides:** [morning](day-1-slides-morning.pdf) (course logistics and the working environment) and [afternoon](day-1-slides-afternoon.pdf) (probability, the marble game, statistics in daily life).
- **Exercise notebooks:** [morning, Exercise A](day-1-exercises-morning.ipynb) and [afternoon, Exercise B](day-1-exercises-afternoon.ipynb). Open them in JupyterLab, select the **R (bayes)** kernel, and run cells with Shift + Enter.
- **Timing games:** [without feedback](collection/1_time_game.html) and [with feedback](collection/2_time_game_with_feedback.html), with [instructions](collection/README.md). Open them by double-clicking the file after unzipping; they work offline.
- **Make-up and extra practice:** [make-up instructions](day-1-makeup.md) and [extra exercises](extra/day-1-extra-exercises.ipynb).
- Everything in one download: [day-1-student-pack.zip](../day-1-student-pack.zip).

## The day

| Time | Session |
|---|---|
| 08:45–09:45 | Lecture A: course logistics; installing and using R, JupyterLab and R's help; using AI assistants well |
| 09:45–11:25 | Exercise A (longer today): form groups, get the software running, R practice, the help warm-up, two group questions |
| 11:25–11:55 | Peer review A with your partner group, and a first plenary |
| 11:55–12:30 | Lunch |
| 12:30–13:30 | Lecture B: probability, random variables, PMF and PDF, the marble game, statistics in daily life |
| 13:30–15:00 | Exercise B: analyse your group's timing data, and write your group's question set |
| 15:00–15:45 | Peer review B and plenary |
| 15:45–16:00 | Daily diary on Mentimeter |

You work in your group (1–10) for the whole course. Your partner group for peer review is the neighbouring one: 1 ↔ 2, 3 ↔ 4, 5 ↔ 6, 7 ↔ 8, 9 ↔ 10.

## Timing data

Each person plays both timing games: 30 trials without feedback, then 30 with feedback. Each game downloads a CSV such as `G3_P07.csv`. Put the no-feedback file in `data/no_feedback/` and the feedback file in `data/feedback/`, and share both files with your group. In the afternoon, everyone puts all group members' files in the same two folders.

If the folders are empty, the notebooks use clearly labelled **synthetic backup data** (group G0, six fictional people), so the code always runs. Never report the backup data as real measurements.

## Extra exercises and make-up

The [extra exercises](extra/day-1-extra-exercises.ipynb) cover the same goals with new problems and data, with hints. They are the make-up work if you miss Day 1 ([instructions](day-1-makeup.md)), and optional practice for everyone else.
