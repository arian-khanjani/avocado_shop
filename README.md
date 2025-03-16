# Avocado Prices Prediction 

---

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
├── pyproject.toml     <- Project configuration file with package metadata for 
│                         dataops_proj and configuration for tools like black
│
└── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
                          generated with `pip freeze > requirements.txt`
```


## Setup

This project uses Python 3.12.6. 

It has been written and tested on macOS. Since the project uses a virtual environment, it is recommended to use the Makefile commands to install the dependencies (only supported on macOS). If you want to install the dependencies manually (for windows users), you can run the following command:

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

After that, you can start exploring the project by running the Jupyter notebooks in the `notebooks` directory.