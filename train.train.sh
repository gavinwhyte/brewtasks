#!/bin/bash
BASEDIR="/Users/andy/Brew_Projects/Python_Projects/BrewAIWeb/"
PYLOC="/Users/andy/anaconda3/envs/brewcore/bin/python"

# BASEDIR="/home/brewai/"
# PYLOC="/home/brewai/anaconda3/envs/brewcore/bin/python"

FOLDER="brewcore"

DATESTR=`date "+%Y%m%d"`
LOGPATH="${BASEDIR}logs/brewai_train.${DATESTR}.log"

CMD1="${PYLOC} ${BASEDIR}${FOLDER}/task.train.train.py"
RUN1="$CMD1"
$CMD1
code=$?
echo $code

CMD2="${PYLOC} ${BASEDIR}${FOLDER}/task.train.task_checker.py"
$CMD2
