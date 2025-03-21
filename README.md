# Avocado Prices Prediction 

### Saxion University of Applied Sciences

**DataOps Course 2025**

**Individual Project**

**Student:** Aryan Khanjani

**Student ID:** 563751

**Email:** arian.khanjani@gmail.com

<a target="_blank" href="https://cookiecutter-data-science.drivendata.org/">
    <img src="https://img.shields.io/badge/CCDS-Project%20template-328F97?logo=cookiecutter" />
</a>

A data science project to predict the average price of avocados in the US using machine learning models. The dataset used in this project is the [Avocado Prices dataset](https://www.kaggle.com/neuromusic/avocado-prices) from Kaggle.

## Project Organization

```
├── Makefile           <- Makefile with convenience commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
└── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
                          generated with `pip freeze > requirements.txt`
```


## Setup

This project uses Python 3.12.6. 

Setting up the project on Windows is a bit different than on macOS / Linux. Instructions are provided below for both cases.

> **Note:** Make sure to run the commands in the root directory of the project and in order.

### Windows

1. Create a virtual environment

```cmd
python3.12 -m venv .venv
```

2. Activate the virtual environment

For CMD:
```cmd
.venv\Scripts\activate
```

For PowerShell:
```powershell
.venv\Scripts\Activate.ps1
```

3. Install the dependencies

```cmd
python3.12 -m pip install -r requirements.txt
```

4. Activate the kernel

```cmd
python3.12 -m ipykernel install --user --name .venv --display-name ".venv"
```

5. Run the Jupyter Notebook (optional)

```cmd
jupyter notebook --NotebookApp.kernel_name=.venv
```

> **Note:** In the Jupyter Notebook GUI, you need to select the kernel `.venv` to use the virtual environment.

---

### macOS / Linux

1. Create a virtual environment

```bash
make venv
```

2. Activate the virtual environment

```bash
source .venv/bin/activate
```

3. Install the dependencies

```bash
make install
```

4. Activate the kernel

```bash
make kernel
```

5. Run the Jupyter Notebook (optional)

```bash
make run-jupyter
```

> **Note:** In the Jupyter Notebook GUI, you need to select the kernel `.venv` to use the virtual environment.

After that, you can start exploring the project by running the Jupyter notebooks in the `notebooks` directory.