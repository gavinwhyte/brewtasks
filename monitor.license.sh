#!/bin/bash
# BASEDIR="/Users/andy/Brew_Projects/Python_Projects/BrewAIWeb/"
# PYLOC="/Users/andy/anaconda3/envs/brewcore/bin/python"

BASEDIR="/home/brewai/"
PYLOC="/home/brewai/anaconda3/envs/brewcore/bin/python"

FOLDER="brewcore"

DATESTR=`date "+%Y%m%d"`
LOGPATH="${BASEDIR}logs/brewai_monitor.${DATESTR}.log"

CMD1="${PYLOC} ${BASEDIR}${FOLDER}/task.monitor.license.py"
RUN1="$CMD1"
$RUN1 2>&1 |tee -a  ${LOGPATH}