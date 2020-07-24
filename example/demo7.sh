echo demo7.sh-----------------
#!/bin/bash
# gcd.sh: 最大公约数
#         用Euclid运算法则

#  两个整数的"最大公约数"
#+ 是能被这两个整数整除的大最整数.

#  Euclid运算法则采用逐次除法.
#  每一次都重新赋值,
#+ 被除数 <---  除数
#+ 除数  <---  余数
#+ 直到 余数 = 0.
#+ 最后被传递的值中：最大公约数 = 被除数.
#
#  关于Euclid运算法则的讨论有一个出色的讨论,
#  访问Jim Loy的网站, http://www.jimloy.com/number/euclids.htm.


# ------------------------------------------------------
# 参数检查
echo "\$0 $0"
echo "\$n $n"
echo "\$# $#"
echo "\$* $$"
echo "\$@ $@"
echo "\$? $?"
echo "\$\$ $$"
ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
  echo "Usage: `basename $0` first-number second-number"
  exit $E_BADARGS
fi

if [[ $1 =~ ^(-?[1-9][0-9]*|0)$ ]]
then
    echo "\$1 $1"
else
    echo "\$1 $1 format error"
    exit 0
fi
    
if [[ $2 =~ ^(-?[1-9][0-9]*|0)$ ]]
then
    echo "\$2 $2"
else
    echo "\$2 $2 format error"
    exit 0
fi

gcd ()
{

  dividend=$1                    #  随意赋值.
  divisor=$2                     #  这里在两个参数赋大的还是小的都没有关系.
                                 #  为什么?

  remainder=1                    #  如果在循环中使用未初始化的变量,
                                 #+ 在循环中第一个传递值会使它返回一个错误信息
                                 #

  until [ "$remainder" -eq 0 ]
  do
    #let "remainder = $dividend % $divisor"
    remainder=$[ $dividend % $divisor ]
    dividend=$divisor            # 现在用最小的两个数字来重复.
    divisor=$remainder
    echo "dividend $dividend"
    echo "divisor $divisor"
  done                           # Euclid运算法则

}                                # 最后的$dividend变量值就是最大公约数.


gcd $1 $2

echo; echo "GCD of $1 and $2 = $dividend"; echo


# 练习:
# --------
#  检测命令行参数以确保它们是整数,
#+ 如果不是整数则给出一个适当的错误信息并退出脚本.

exit 0
