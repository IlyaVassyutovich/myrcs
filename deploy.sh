#! /bin/bash

echo "================= DEPLOY RCs ================="

cd `dirname $0`
SCRIPTDIR="`pwd -P`"
RCDIR="$SCRIPTDIR/conf.d"
LN=`which ln`
SYML='-s'

for RC in `ls -A $RCDIR`
do
    if [ -r ~/$RC ]; then
        mv ~/$RC ~/$RC.`date +%y%m%d`.bak
    fi
    $LN $SYML $RCDIR/$RC ~/$RC
done
