#!/bin/bash

DIR=$1
echo $DIR
cd $DIR

# js -> ts
for CUR in `ls | grep '.js'`
do
    AFTER=`echo $CUR | sed 's/\.js/\.ts/g'`
    mv $CUR $AFTER
done

# ts -> js
# for CUR in `ls | grep '.ts'`
# do
#     AFTER=`echo $CUR | sed 's/\.ts/\.js/g'`
#     mv $CUR $AFTER
# done
