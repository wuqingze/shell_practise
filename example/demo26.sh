echo demo26.sh-----------------
#!/bin/bash
# 用((...))结构来使用C风格操作符来处理变量.


echo

(( a = 23 ))  # 以C风格来设置一个值，在"="两边可以有空格.
echo "a (initial value) = $a"

(( a++ ))     # C风格的计算后自增.
echo "a (after a++) = $a"

(( a-- ))     # C风格的计算后自减.
echo "a (after a--) = $a"


(( ++a ))     # C风格的计算前自增.
echo "a (after ++a) = $a"

(( --a ))     # C风格的计算前自减.
echo "a (after --a) = $a"




########################################################
#  注意，就像在C中一样，计算前自增自减和计算后自增自减有一点不同的的副作用
#

n=1; let --n && echo "True" || echo "False"  # False
n=1; let n-- && echo "True" || echo "False"  # True

#  多谢Jeroen Domburg.
########################################################

echo

(( t = a<45?7:11 ))   # C风格的三元计算.
echo "If a < 45, then t = 7, else t = 11."
echo "t = $t "        # Yes!