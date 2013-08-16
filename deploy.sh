#! /bin/bash

#TODO: Заменить cd ~/ на ln

echo "================= DEPLOY RCs ================="
echo "WARNING : Backing up existing configs did not"
echo "implemented yet. Be carefull!"

#/home/monomah/configs/deploy.sh
#/etc/apt
#/home/monomah/configs

RCDIR="`dirname $0`/conf.d"
LN=`which ln`
SYML='-s'

#echo $0
#echo `pwd`
#echo `dirname $0`

cd ~/
##echo `pwd`
for RC in `ls -A $RCDIR`
do
##    echo $RC
    if [ -r $RC ]; then
            mv $RC $RC.bak
    fi
    $LN $SYML $RCDIR/$RC ./$RC
done
