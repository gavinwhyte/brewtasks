#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BASEDIR="$(dirname "$SCRIPT_DIR")"

PYLOC="${BASEDIR}/anaconda3/envs/brewcore/bin/python"

FOLDER="brewcore"

DATESTR=`date "+%Y%m%d"`
LOGPATH="${BASEDIR}/logs/brewai_train.${DATESTR}.log"

CMD1="${PYLOC} ${BASEDIR}/${FOLDER}/task.train.data_processing.py"
RUN1="$CMD1"
$RUN1 2>&1 |tee -a  ${LOGPATH}