# Final assignment

**Bayesian statistics for PhD researchers · Aalborg University · 2026**

The final assignment is **individual** and is done after the course. It counts for **50 % of the course grade**; the other 50 % is in-class activity. The course is passed with a weighted total of at least **70 %**, together with the attendance requirement. See [../grading.md](../grading.md).

Everybody does the same assignment: an **exercise collection of seven independent problems**. Each problem has its own everyday setting and its own small dataset, and **no problem uses results from another**, so you can do them in any order. The models, priors and seeds are given, and every part says exactly which numbers, tables or figures to report. The assignment is scored out of **100 points** with the rubric in [rubric.md](rubric.md), 20 points in each of five areas.

**Problems 1–4: code with blanks.** The notebook contains R code (dplyr and ggplot2) with blanks `___` to fill in, and the folder `exercises/models/` has a Stan template with blanks for every model of these problems (see [exercises/models/README.md](exercises/models/README.md)).

**Problems 5–7: no template code.** You write the R code and the Stan programs yourself. Every part still says exactly what to compute, which file names to use and what to report, and hidden hints point to the course notebooks that show each technique.

| | |
|---|---|
| What you do | Problems 1–4: fill in the blanks in the R code and in the Stan templates. Problems 5–7: write the code and the Stan programs yourself, with hints. Run the notebook and report the requested results |
| What you submit | **one zip file** named **`firstname_lastname.zip`** (for example `anna_jensen.zip`) on the course Moodle page, with the notebook with outputs (`.ipynb`), an HTML or PDF export of it, and your `.stan` files |
| Software | R with CmdStanR, dplyr and ggplot2 (the `bayes` environment), plus the **loo** package for Problem 3 |

## The seven problems

Open [exercises/final-assignment-exercises.ipynb](exercises/final-assignment-exercises.ipynb) from the `exercises/` folder. The data are described in [exercises/data/README.md](exercises/data/README.md).

| Problem | Setting | What you practise |
|---|---|---|
| 1 | A basketball player tries a new free-throw technique | Updating a proportion, the effect of the prior on a decision, prediction |
| 2 | Phone calls to a university help desk | Counts with different opening hours, exact answer versus Stan, Monte Carlo error, a misbehaving Stan program |
| 3 | Daily sales at an ice-cream kiosk | Regression, prior and posterior predictive checks, a log-scale model, stock planning |
| 4 | Thumbs-up reviews of 15 restaurants | No, partial and complete pooling, a failing sampler and its repair, ranking with uncertainty |
| 5 | Passing the driving test | Logistic regression, odds ratios, predictions, a grouped check |
| 6 | Is the kitchen scale accurate? | A simulation check of the method: coverage and bias |
| 7 | How many loaves should a bakery bake? | Two count models, expected profit, sensitivity, and a summary for the baker |

If you get stuck in a part, report what you have and move on: every requested result that is present and correct earns credit.

## Rules

- **Your own work.** You may discuss ideas with others. The code, results and explanations you submit must be your own.
- **Reproducible.** Your notebook must run from a fresh kernel, top to bottom, and reproduce the reported numbers within Monte Carlo error.
- **Explainable.** You may be asked to explain any part of your submission in a short conversation. If you cannot explain a central part of your own submission, the points for that part are not awarded.
- **Synthetic data.** All data are invented for teaching. Never present them as real measurements.

## Deadline and submission

| What | Deadline | Where |
|---|---|---|
| Final assignment | **13 December 2026, 23:55** | Moodle |

Danish time. **The deadline is strict:** late submissions are not accepted, and the Moodle upload closes at 23:55. Upload a version early and replace it later if you improve it.

Submit **one zip file** named **`firstname_lastname.zip`** (for example `anna_jensen.zip`) on the course Moodle page. It contains:

- the completed notebook with outputs (`.ipynb`);
- an HTML or PDF export of it;
- all your `.stan` files (the completed templates for Problems 2–4 and your own programs for Problems 5–7).

If you upload a new version, replace the old zip so that only one file is submitted.

## Missed course days

Make-up work for a missed day (the day's in-class exercises plus its *extra exercises*) is separate from the final assignment. It is graded as part of the in-class component. See [../grading.md](../grading.md).
