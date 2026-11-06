# Using the course environment on UCloud

If the `bayes` environment does not work on your own laptop, you can use the same environment in your browser on **UCloud**, the Danish national research computing platform. Everything is ready: R, the tidyverse, CmdStanR and CmdStan, with JupyterLab and the kernel **R (bayes)**. You need a login at a Danish university (WAYF).

Please still try the [laptop installation](installations.md) as well: you will need R and Stan for the final assignment after the course.

## Once: join the course project

1. Open the **invitation link to the course project, posted on Moodle**, and log in with WAYF, choosing your own university. Accept the invitation to the project **Bayesian Statistics course 2026**.
2. Select the course project in the project selector (top right).
3. Go to **Files**, open your own drive **Member Files: <your name>** and create a folder **`bayes-work`**. Keep all your work there.

## Each time: start JupyterLab

1. Go to **Apps → JupyterLab** and fill in:
   - **Hours:** the length of your session, for example 8.
   - **Machine type:** `cpu-amd-zen5`, with **2 CPUs**.
   - **Folders:** add the drive **`bayes-course`** and your own folder **`bayes-work`**.
   - **Initialization** (under Parameters): choose the file `bayes-course/setup/start-bayes.sh`.
2. Click **Submit**, wait until the job is running, then click **Open interface**.
3. In JupyterLab, open your notebook from **`/work/bayes-work`** and choose the kernel **R (bayes)**. Do not use the kernel called just "R": it has no Stan.

The first time, copy the course materials into your folder. In JupyterLab, open **File → New → Terminal** and type:

```bash
cp -r /work/bayes-course/materials/* /work/bayes-work/
```

New days' materials are added to `bayes-course/materials` during the course; copy them the same way, or download the day's student pack from the course page and upload it to `bayes-work`.

## Good habits

- **Save your work only in `bayes-work`.** Everything else in a job disappears when the job stops.
- **Stop the job when you are done:** **Compute → Runs**, open your job, and hold **Stop application**. A running job uses the course's computing budget, also when you are not using it.
- If the time runs out in the middle of class, start a new job; your files in `bayes-work` are still there.

## If something does not work

| Problem | Fix |
|---|---|
| No kernel "R (bayes)" | The Initialization file was not chosen, or the `bayes-course` drive was not added. Stop the job and start it again with both. |
| A Stan model fails with "Permission denied" | The `.stan` file is in the read-only `bayes-course` drive. Copy it to `bayes-work` and work there. |
| You cannot see the course project | Open the invitation link on Moodle again, or ask the lecturer. |

Questions: [luch@math.aau.dk](mailto:luch@math.aau.dk).
