#!/bin/bash 
# 列出所有的行星名称.

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
  echo $planet  # 每个行星被单独打印在一行上.
done
echo

for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
# 所有的行星名称打印在同一行上.
# 整个'list'只有一个变量，用""封成一个变量.
do
  echo $planet
done




# -----------------------------
# 分配行星的名字和它距太阳的距离
# -----------------------------

#for planet in "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"
#do
#  set -- $planet  # Parses variable "planet" and sets positional parameters。
#  # "--" 将防止$planet为空,或者是以一个破折号开头。
#
#  # 可能需要保存原始的位置参数,因为它们被覆盖了。
#  # 一种方法就是使用数组,
#  #        original_params=("$@")
#
#  echo "$1     $2,000,000 miles from the sun"
#  #-------two  tabs---把后边的0和$2连接起来
#done

for planet in "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"
do
    echo $planet | awk '{print $1,$2".000.000 miles from the sum"}'
#    echo $planet | awk -F " " 'BEGIN{sufix=; print $1    $2""sufix}'
done


# ------------------------------------------
#  使用两种方法来调用这个脚本,一种是带参数的情况,另一种不带参数.
#+ 观察此脚本的行为各是什么样的?
# ------------------------------------------

echo
echo ===================

for a
do
 echo -n "$a ===="
done

#  没有[list],所以循环将操作'$@'
#+ (包括空白的命令参数列表).

echo;echo;


# ------------------------------------------
#+ [list]是由命令替换产生的.
# ------------------------------------------

NUMBERS="9 7 3 8 37.53"

for number in `echo $NUMBERS`  # for number in 9 7 3 8 37.53
do
  echo -n "$number "
done

echo 


# ------------------------------------------
# 列出系统上的所有用户
# ------------------------------------------

echo;echo;

PASSWORD_FILE=/etc/passwd
n=1           # User number

#for name in $(awk 'BEGIN{FS=":"}{print $1}' < "$PASSWORD_FILE" )
#for name in $(awk 'BEGIN{FS=":"}{print $1}' < $PASSWORD_FILE )
#for name in $(awk 'BEGIN{FS=":"}{print $1}'  $PASSWORD_FILE )
#for name in $(awk -F ":" '{print $1}'  $PASSWORD_FILE )
for name in $(awk -F : '{print $1}'  $PASSWORD_FILE )
# 域分隔   = :           ^^^^^^
# 打印出第一个域                 ^^^^^^^^
# 从password文件中取得输入                    ^^^^^^^^^^^^^^^^^
do
  echo "USER #$n = $name"
#  let "n += 1"
    (( n += 1 ))
done  

echo ======1 

# USER #1 = root
# USER #2 = bin
# USER #3 = daemon
# ...
# USER #30 = bozo



# ------------------------------------------
# 在目录的所有文件中查找源字串
# ------------------------------------------

echo;echo;

directory=/usr/bin/
fstring="Free Software Foundation"  # 查看那个文件中包含FSF.

for file in $( find $directory -type f -name '*' | sort )
do
  strings $file | grep "$fstring" | sed -e "s%$directory%%"
  #  在"sed"表达式中,
  #+ 我们必须替换掉正常的替换分隔符"/",
  #+ 因为"/"碰巧是我们需要过滤的字串之一.
  #  如果不用"%"代替"/"作为分隔符,那么这个操作将失败,并给出一个错误消息.(试试)
done  


# ------------------------------------------
# 将目录中的符号连接文件名保存到一个文件中
# ------------------------------------------


exit 0

