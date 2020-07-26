#!/bin/bash
echo demo33.sh-----------------

JUST_A_SECOND=3

funky ()
{ # 这是一个最简单的函数.
  echo "This is a funky function."
  echo "Now exiting funky function."
} # 函数必须在调用前声明.


fun ()
{ # 一个稍复杂的函数.
  i=0
  REPEATS=30

  echo
  echo "And now the fun really begins."
  echo

  sleep $JUST_A_SECOND    # 嘿, 暂停一秒!
  while [ $i -lt $REPEATS ]
  do
    echo "----------FUNCTIONS---------->"
    echo "<------------ARE-------------"
    echo "<------------FUN------------>"
    echo "<------------$i------------>"
    echo
    let "i+=1"
  done
}

  # 现在,调用两个函数.

funky
fun

exit 0
