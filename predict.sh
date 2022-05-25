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
LOGPATH="${BASEDIR}/logs/brewai_predict.${DATESTR}.log"

CMD1="${PYLOC} ${BASEDIR}/${FOLDER}/task.predict.py"
RUN1="$CMD1"
$RUN1 2>&1 |tee -a  ${LOGPATH}