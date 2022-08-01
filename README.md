Jupyter Notebooks
====================

## Requirements

Ensure you have

- Python 3.4+
   - `virtualenv` and `virtualenvwrapper` installed
- Java 8

## Getting started

To setup, run `./setup.sh` in the project root dir.

To start a notebook, run the following in the project root dir:
```
$ workon jupyter-notebooks
$ jupyter notebooks
```

A notebook will open in a new window. There you can try running:

```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('myApp').getOrCreate()
```

If no errors happened, installation was successful.