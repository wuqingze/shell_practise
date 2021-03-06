#!/bin/bash
echo demo16.sh-----------------

a=4
b=5

#  这儿的"a"和"b"既能被看成是整数也能被看着是字符串。
#  在字符串和数字之间不是严格界定的，
#+ 因为Bash变量不是强类型的。

#  Bash允许变量的整数操作和比较，
#+ 但这些变量必须只包括数字字符.
#  不管怎么样，你应该小心考虑.

echo

if [ "$a" -ne "$b" ]
then
  echo "$a is not equal to $b"
  echo "(arithmetic comparison)"
fi

echo

if [ "$a" != "$b" ]
then
  echo "$a is not equal to $b."
  echo "(string comparison)"
  #     "4"  != "5"
  # ASCII 52 != ASCII 53
fi

# 在这个实际的例子中,"-ne"和"!="都能工作.

echo

exit 0
