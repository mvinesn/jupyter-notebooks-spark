#!/bin/bash

PROJECT_NAME=$(basename $PWD)
source `which virtualenvwrapper.sh`
mkvirtualenv $PROJECT_NAME

set -euo pipefail

wget -P ./spark https://dlcdn.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz
tar -zxvf spark/spark-3.3.0-bin-hadoop3.tgz -C ./spark/
rm ./spark/spark-3.3.0-bin-hadoop3.tgz

ln -s ~/.virtualenvs/$PROJECT_NAME pyenv
rm pyenv/bin/postactivate
ln -s $PWD/.env/postactivate pyenv/bin/postactivate
rm pyenv/bin/predeactivate
ln -s $PWD/.env/predeactivate pyenv/bin/predeactivate

pip install wheel
pip install -r requirements.txt
