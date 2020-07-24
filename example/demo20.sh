#!/bin/bash
echo demo20.sh-----------------

#  检查一些系统环境变量
#  这是很好的预防性防护.
#  例如，如果$USER(用户在控制台的名字)没有被设置,
#+ 系统将不接受你.

: ${HOSTNAME?} ${USER?} ${HOME?} ${MAIL?"MAIL变量没有定义，这里是我自定义的哦"}
  echo
  echo "Name of the machine is $HOSTNAME."
  echo "You are $USER."
  echo "Your home directory is $HOME."
  echo "Your mail INBOX is located in $MAIL."
  echo
  echo "If you are reading this message,"
  echo "critical environmental variables have been set."
  echo
  echo

# ------------------------------------------------------

#  ${variablename?}结构也能检查一个脚本中变量的设置情况
#

ThisVariable=Value-of-ThisVariable
#  注意，顺便说一下字符串变量可能被设置成不允许的字符
#
: ${ThisVariable?}
echo "Value of ThisVariable is $ThisVariable".
echo
echo


: ${ZZXy23AB?"ZZXy23AB has not been set."}
#  如果变量ZZXy23AB没有被设置,
#+ 则脚本会打印一个错误信息而结束。

# 你可以指定错误信息.
# : ${variablename?"ERROR MESSAGE"}


# 等同于:              dummy_variable=${ZZXy23AB?}
#                      dummy_variable=${ZZXy23AB?"ZXy23AB has not been set."}
#
#                      echo ${ZZXy23AB?} >/dev/null

#  使用命令"set -u"后，再比较这些检查变量是否被设置的方法的不同...
#



echo "You will not see this message, because script already terminated."

HERE=0
exit $HERE   # 不会执行到这儿.

# 实际上，这个脚本会返回退出状态码为1(echo $?).
