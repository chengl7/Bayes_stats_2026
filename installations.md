# Installing Miniconda, R, CmdStan and JupyterLab

This course uses R and [CmdStan](https://mc-stan.org/docs/cmdstan-guide/) (the command-line interface to Stan), with [CmdStanR](https://mc-stan.org/cmdstanr/) as the R interface. **All course work happens in JupyterLab notebooks** with an R kernel: each exercise set is one notebook that you open and run. No other editor is needed.

R and CmdStan are installed with conda, in one environment named `bayes`. Everyone installs conda first, using Miniconda. The sections below give the steps for macOS, Windows and Linux: (1) Miniconda, (2) C++ tools, (3) the `bayes` environment, (4) JupyterLab and the R kernel, (5) a check that Stan works.

Miniconda is free for coursework. Anaconda's terms include an exception for students and universities. If a later `conda` command asks you to accept those terms, accept them.

If `conda --version` already works, skip to section 2.

## 1. Install Miniconda

[Miniconda](https://www.anaconda.com/docs/getting-started/miniconda/install) is a small installer for conda. Follow the subsection for your operating system. Accept the default install location, and answer **yes** when the installer asks to initialize conda.

### macOS

Open Terminal (`Applications > Utilities > Terminal`) and check the chip:

```bash
uname -m
```

- `arm64` is Apple Silicon (M1, M2, M3, M4, and later).
- `x86_64` is an Intel Mac.

Apple Silicon:

```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
bash Miniconda3-latest-MacOSX-arm64.sh
```

Intel:

```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
```

Anaconda stopped publishing new Intel Mac installers in August 2025. The command above is the last Intel installer. The course packages in the next section come from conda-forge, which still provides them for Intel Macs.

Press Return to read the license, type `yes` to accept it, press Return to install into `miniconda3` in your home folder, and type `yes` so the installer initializes conda. Close Terminal and open it again.

### Windows

Download the installer and run it:

[Miniconda3-latest-Windows-x86_64.exe](https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe)

In the installer:

- Choose **Just Me**. This does not need administrator rights.
- Keep the default folder, under your user folder.
- Leave **Add Miniconda3 to my PATH environment variable** unchecked. Leave **Register Miniconda3 as my default Python** unchecked as well.

Finish the installer, then open **Anaconda Prompt** from the Start menu. Use that prompt for every `conda` command in this guide. A normal Command Prompt or PowerShell window will not see `conda`.

### Linux

Open a terminal and check the processor:

```bash
uname -m
```

Most laptops and desktops are `x86_64`. `aarch64` is a 64-bit ARM machine.

x86_64:

```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

aarch64:

```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
bash Miniconda3-latest-Linux-aarch64.sh
```

Press Return to read the license, type `yes` to accept it, press Return to install into `miniconda3` in your home folder, and type `yes` so the installer initializes conda. Close the terminal and open it again. If your shell is bash and `conda` is still missing, run `source ~/.bashrc`.

### Check the install

```bash
conda --version
```

The command should print a version number, and the prompt should start with `(base)`.

## 2. Install a C++ compiler

Stan models are compiled to C++. The course environment in the next section includes a compiler. macOS and Linux still need a few system tools. Windows does not need a separate compiler install.

### macOS

```bash
xcode-select --install
```

A dialog should appear. Choose Install and wait for it to finish. If the tools are already present, the command says so; that is fine.

### Linux

Debian or Ubuntu:

```bash
sudo apt update
sudo apt install build-essential
```

Fedora:

```bash
sudo dnf install gcc-c++ make
```

On another distribution, install `g++` and `make` with that distribution's package manager.

### Windows

Nothing to install here. The CmdStan package in the next section brings the compiler with it.

## 3. Create the course environment

On Windows, run this in Anaconda Prompt. On macOS and Linux, run it in a terminal.

This installs R (`r-base`), CmdStanR (`r-cmdstanr`) and the tidyverse (`r-tidyverse`: ggplot2 for figures, dplyr for summarising data by group, and friends) from conda-forge. The CmdStanR package also installs CmdStan and the C++ toolchain it needs. The download is large (a few GB) and can take several minutes. Keep the `-c conda-forge` flag. These packages should not be installed from Anaconda's `defaults` channel.

```bash
conda create -n bayes -c conda-forge r-base r-cmdstanr r-tidyverse
```

Confirm when conda asks. Then activate the environment:

```bash
conda activate bayes
```

Your prompt should now start with `(bayes)`.

Check that R and CmdStan are visible:

On macOS and Linux:

```bash
which R
R --version
echo "$CMDSTAN"
```

On Windows, in Anaconda Prompt:

```bat
where R
R --version
echo %CMDSTAN%
```

The R path should sit inside the `bayes` environment (`envs/bayes`, or `envs\bayes` on Windows). `CMDSTAN` should point at CmdStan inside that same environment: `envs/bayes/bin/cmdstan` on macOS and Linux, `envs\bayes\Library\bin\cmdstan` on Windows. That variable is set when you activate the environment. CmdStanR reads it to find CmdStan. **If `echo %CMDSTAN%` prints nothing (or just `%CMDSTAN%`) on Windows, CmdStan is missing: see [Troubleshooting: CmdStan not found](#troubleshooting-cmdstan-not-found) at the end of this guide.**

Leave the environment active for section 4. When you are finished with it later, `conda deactivate` turns it off.

## 4. Install JupyterLab and the R notebook kernel

JupyterLab opens notebooks (`.ipynb` files) in your browser. Each notebook combines Markdown explanations, executable code cells, and output such as plots. We use an **R kernel**, so the course's R and CmdStanR code runs directly; you do not need to translate it into Python.

### Install once

First complete sections 1–3. On macOS and Linux, run the following in Terminal. On Windows, use **Anaconda Prompt**. These are terminal commands, not R commands:

```bash
conda activate bayes
conda install -c conda-forge jupyterlab r-irkernel
```

Confirm when conda asks. Register the R kernel inside the active environment:

```bash
Rscript -e "IRkernel::installspec(name='ir-bayes', displayname='R (bayes)', user=FALSE, prefix=Sys.getenv('CONDA_PREFIX'))"
jupyter kernelspec list
```

The list should include `ir-bayes`. In JupyterLab, its displayed name is **R (bayes)**. This registration uses the R installation in the `bayes` environment. It does not require a separate global kernel installation.

### Launch JupyterLab

Activate the environment, change to your course folder, and start JupyterLab. Replace the example path with the location of your own folder.

On macOS or Linux:

```bash
conda activate bayes
cd "/path/to/bayes_stats_2026"
jupyter lab
```

On Windows, in Anaconda Prompt:

```bat
conda activate bayes
cd /d "C:\path\to\bayes_stats_2026"
jupyter lab
```

JupyterLab normally opens your browser automatically. If it does not, open the local URL printed in the terminal. Keep that terminal running during the session. Always launch JupyterLab after activating `bayes`, so the R kernel inherits the CmdStan and compiler configuration.

### Open and run the course notebook

In JupyterLab's file browser, open `pre-course/pre-course-refresher.ipynb`. Select **R (bayes)** if prompted. If another kernel is selected, use **Kernel > Change Kernel** to choose **R (bayes)**.

1. Run the first code cell (setup).
2. Select a code cell and press **Shift+Enter**, or click the toolbar Run button. Results appear immediately below the cell.
3. Edit a value and rerun the cell to explore its effect. Double-click a Markdown cell to edit the explanation; Shift+Enter displays it again.
4. Save the notebook to preserve both code and outputs. Use **Kernel > Restart Kernel and Run All Cells** to check that it runs from a clean R session.

For a demonstration, use the table of contents to navigate, browser zoom to enlarge text, and single-document mode under **View** to reduce clutter. A static preview of an `.ipynb` file cannot execute code; execution requires a running Jupyter session.

### Check the environment

Run this in an R notebook cell:

```r
R.version.string
R.home()
Sys.getenv("CONDA_PREFIX")
cmdstanr::cmdstan_path()
cmdstanr::cmdstan_version()
```

Check that the paths refer to the course `bayes` environment. If R code produces Python syntax errors, select the R kernel. If **R (bayes)** is missing, rerun the registration command above and restart JupyterLab. If CmdStan cannot be found, stop JupyterLab and launch it again after `conda activate bayes`.

To finish, save your notebook, then press **Ctrl+C** in the terminal running JupyterLab and confirm shutdown if asked. Closing the browser tab alone does not stop the server.

See the [JupyterLab installation documentation](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html) and [IRkernel installation guide](https://irkernel.github.io/installation/) for further details.

## 5. Check that a Stan model compiles

Run the following in a notebook cell with the **R (bayes)** kernel (section 4). Part 0 of the pre-course refresher contains the same check.

```r
library(cmdstanr)

cmdstan_version()
cmdstan_path()

file <- file.path(tempdir(), "bernoulli.stan")   # copy the example to a folder we can write to
file.copy(file.path(cmdstan_path(), "examples", "bernoulli", "bernoulli.stan"), file, overwrite = TRUE)
mod <- cmdstan_model(file)
fit <- mod$sample(
  data = list(N = 10, y = c(0, 1, 0, 0, 0, 0, 0, 0, 0, 1)),
  seed = 123,
  chains = 4,
  parallel_chains = 4,
  refresh = 0
)
fit$summary(variables = "theta")
```

The first compile can take a minute. A successful run prints a one-row summary for `theta`, with a mean near `0.2`.

Then check that the tidyverse loads and ggplot2 draws a figure in the notebook:

```r
library(tidyverse)   # loads ggplot2, dplyr and friends
ggplot(data.frame(theta = fit$draws("theta", format = "draws_df")$theta), aes(theta)) +
  geom_histogram(bins = 30)
```

A histogram of the posterior draws of `theta` should appear below the cell.

If you created the `bayes` environment before the tidyverse was added to this guide, add it with `conda install -n bayes -c conda-forge r-tidyverse`.

Also confirm that this R session is the conda one:

```r
R.home()
.libPaths()
```

Both paths should contain `miniconda3`, `envs`, and `bayes`. On Windows the separators are backslashes.

## Each time you work

1. Open Terminal on macOS or Linux, or **Anaconda Prompt** on Windows.
2. `conda activate bayes`
3. Change to your course folder and run `jupyter lab`.
4. Open the notebook for the day and select the **R (bayes)** kernel.

Packages you install (for example `conda install -c conda-forge r-loo`, needed for the final assignment) are stored in the `bayes` environment.

## Troubleshooting: CmdStan not found

Typical messages: `CmdStan path has not been set yet`, `Unable to find CmdStan`, or `echo %CMDSTAN%` printing nothing. This happens most often on **Windows**. Work through the steps in order; each one fixes a common cause.

**1. Start JupyterLab from the activated environment.** CmdStanR finds CmdStan through the variable `CMDSTAN`, which is set only by `conda activate bayes`. JupyterLab started from the Windows Start menu, from Anaconda Navigator, or from another environment does not have it. Close JupyterLab, open **Anaconda Prompt** (not PowerShell, not the plain Command Prompt), and run:

```bat
conda activate bayes
echo %CMDSTAN%
jupyter lab
```

`echo %CMDSTAN%` should print a path ending in `envs\bayes\Library\bin\cmdstan`.

**2. Check that the CmdStan package is installed.** In Anaconda Prompt:

```bat
conda list -n bayes cmdstan
```

If no `cmdstan` line appears, install it (and then repeat step 1):

```bat
conda install -n bayes -c conda-forge cmdstan
```

This is needed if CmdStanR was installed in another way, for example with `install.packages("cmdstanr")` in R or from Anaconda's `defaults` channel. Do not use `install.packages()` or `cmdstanr::install_cmdstan()` in the course environment: everything comes from conda-forge.

**3. If CmdStan is installed but still not found in the notebook,** tell CmdStanR where it is, at the top of the notebook's first cell:

```r
cmdstanr::set_cmdstan_path(file.path(Sys.getenv("CONDA_PREFIX"), "Library", "bin", "cmdstan"))   # Windows
cmdstanr::cmdstan_version()
```

On macOS and Linux the folder is `file.path(Sys.getenv("CONDA_PREFIX"), "bin", "cmdstan")`. If `Sys.getenv("CONDA_PREFIX")` is empty, the notebook was not started from the activated environment: go back to step 1.

**4. Still stuck?** First paste the error message, your operating system and the commands you ran into an AI assistant (for example Claude or ChatGPT) and follow its advice. If that does not solve it, send the same information to [luch@math.aau.dk](mailto:luch@math.aau.dk). Meanwhile, use the course environment on UCloud (see [ucloud.md](ucloud.md)), which needs no installation.
