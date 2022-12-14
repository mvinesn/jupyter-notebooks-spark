Jupyter Notebooks with Spark
====================

This shows how to set up Jupyter Notebooks with a local Spark cluster. For more details, see [this link](https://medium.com/free-code-camp/how-to-set-up-pyspark-for-your-jupyter-notebook-7399dd3cb389).


## Requirements

Ensure you have

- [Python 3.4+](https://www.python.org/downloads/), and
   - [`virtualenv`](https://virtualenv.pypa.io/en/latest/)
   - [`virtualenvwrapper`](https://pypi.org/project/virtualenvwrapper/)
- [Java 8](https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html)

## Setup

To setup, run `./setup.sh` in a command window in the project root dir. This will:
- Create a Python virtual environment in `~/.virtualenvs`.
- Download and set up Apache Spark in the `spark` directory.

## Running notebooks

To start notebooks, execute the `run` script in a command window in the project root dir.

This will open a new browser window with the notebooks interface (App logs will appear in the command window you executed the `run` script in).

Try the app by loadiing the `example.ipynb` file and running the commands therein.

Notebook files are by default saved in the `notebooks` directory.

To stop the application, go to the command window where the app logs are displayed and press `ctrl+c`. Type `y` when prompted if you want to shut down the notebooks server.
