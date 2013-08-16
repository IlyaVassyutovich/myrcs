#! /bin/bash

#TODO: Заменить cd ~/ на ln

echo "================= DEPLOY RCs ================="
echo "WARNING : Backing up existing configs did not"
echo "implemented yet. Be carefull!"

RCDIR="`pwd`/conf.d"
LN=`which ln`
SYML='-s'
DATE=`date +%y%m%d`

cd ~/
for RC in `ls -A $RCDIR`
do
    if [ -r $RC ]; then
            mv $RC $RC.$DATE.bak
    fi
    $LN $SYML $RCDIR/$RC ./$RC
done
