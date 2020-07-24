#!/bin/bash
echo demo11.sh-----------------

a=24
b=47

#if [ "$a" -eq 24 ] && [ "$b" -eq 47 ]
if [ $a == 24 ] && [ $b == 47 ]
then
  echo "Test #1 succeeds."
else
  echo "Test #1 fails."
fi

# 错误:   if [ "$a" -eq 24 && "$b" -eq 47 ]
#+         这会尝试执行' [ "$a" -eq 24 '
#+         然后会因没找到匹配的']'而失败.
#
#  注意:  if [[ $a -eq 24 && $b -eq 24 ]]也可以.
#  双方括号的if-test比
#+ 单方括号的结构更灵活.       
#    (第17行和第6行的"&&"有不同的意思.)
#    多谢Stephane Chazelas指出这一点.


if [ "$a" -eq 98 ] || [ "$b" -eq 47 ]
then
  echo "Test #2 succeeds."
else
  echo "Test #2 fails."
fi


#  -a和-o选项提供
#+ 混合条件测试另一个选择.
#  多谢Patrick Callahan指出这一点.


if [ "$a" -eq 24 -a "$b" -eq 47 ]
then
  echo "Test #3 succeeds."
else
  echo "Test #3 fails."
fi


if [ "$a" -eq 98 -o "$b" -eq 47 ]
then
  echo "Test #4 succeeds."
else
  echo "Test #4 fails."
fi


a=rhino
b=crocodile
if [ "$a" = rhino ] && [ "$b" = crocodile ]
then
  echo "Test #5 succeeds."
else
  echo "Test #5 fails."
fi

exit 0
