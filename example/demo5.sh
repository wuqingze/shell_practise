echo demo5.sh-----------------
#let "t1 = ((5 + 3, 7 - 1, 15 - 4))"
t1=$((15-4))
#t1=$[15-4]
echo "t1 = $t1"               # t1 = 11

let "t2 = ((a = 9, 15 / 3)), t3 = 1+2 , t4 = 1+3, t5 = 1+4"  # 初始化"a"并求"t2"的值.
echo "t2 = $t2    a = $a    t3=$t3 t4=$t4 t5=$t5"     # t2 = 5    a = 9
