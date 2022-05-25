#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ENVLOC="${SCRIPT_DIR}/.env"
if [ -f $ENVLOC ]
then
    export $(cat $ENVLOC | xargs)
fi

BASEDIR="$(dirname "$SCRIPT_DIR")"

PYLOC="${BASEDIR}/anaconda3/envs/brewcore/bin/python"

FOLDER="brewcore"

DATESTR=`date "+%Y%m%d"`
LOGPATH="${BASEDIR}/logs/brewai_train.${DATESTR}.log"

CMD1="${PYLOC} ${BASEDIR}/${FOLDER}/task.train.train.py"
RUN1="$CMD1"
$CMD1
code=$?
echo $code

CMD2="${PYLOC} ${BASEDIR}/${FOLDER}/task.train.task_checker.py"
$CMD2
