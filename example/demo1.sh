echo demo1.sh-----------------
#!/bin/bash
echo -------------------------
echo -------------------------
NUM=10

printf "输出数字$NUM\n"
echo $NUM
#for f in `ls | grep demo`
for f in $(ls | grep demo)
do
    echo $f
done
echo ------------
