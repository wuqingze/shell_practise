#!/bin/bash
#
# 每次调用$RANDOM都会返回不同的随机整数.
# 范围为: 0 - 32767 (带符号的16位整数).

echo demo24.sh-----------------
MAXCOUNT=10
count=1

echo
echo "$MAXCOUNT random numbers:"
echo "-----------------"
while [ "$count" -le $MAXCOUNT ]      # 产生10($MAXCOUNT)个随机整数.
do
  number=$RANDOM
  echo - $number
  let "count += 1"  # 增加计数.
done
echo "-----------------"

# 如果你需要某个范围的随机整数，可以使用取模操作符.
# (事实上，这不是一个非常好的办法。理由请见man 3 rand)
# 取模操作会返回除法的余数.

RANGE=500

echo

number=$RANDOM
let "number %= $RANGE"
#           ^^
echo "Random number less than $RANGE  ---  $number"

echo




#------------------
#
# 产生二元值，即"真"或"假"。
# 
#------------------
BINARY=2
T=1
number=$RANDOM

let "number %= $BINARY"
#注意 let "number >>= 14" 会产生更平均的随机分布   
#(译者注：正如在man手册里提到的，更高位的随机分布更平均，
#+ (除了最后的二元值右移出所有的值)。                       
#取模操作使用低位来产生随机会相对不平均)
if [ "$number" -eq $T ]
then
  echo "TRUE"
else
  echo "FALSE"
fi  

echo



#------------------
#
# 模拟掷骰子。
# 
#------------------
SPOTS=6   # 模除 6 会产生 0 - 5 之间的值。
          # 结果增1会产生 1 - 6 之间的值。
          # 多谢Paulo Marcel Coelho Aragao的简化。
die1=0
die2=0
# 这会比仅设置SPOTS=7且不增1好?为什么会好？为什么会不好?

# 单独地掷每个骰子，然后计算出正确的机率。

    let "die1 = $RANDOM % $SPOTS +1" # 掷第一个。
    let "die2 = $RANDOM % $SPOTS +1" # 掷第二个。
    #  上面的算术式中，哪个操作符优先计算 --
    #+ 取模 (%) 还是 加法 (+)?

let "throw = $die1 + $die2"
echo "Throw of the dice = $throw"
echo "$die1 , $die2"

exit 0
