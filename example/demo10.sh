echo demo10.sh-----------------
a=1.5

let "b = $a + 1.3"  # 错误
# t2.sh: let: b = 1.5 + 1.3: syntax error in expression (error token is ".5 + 1.3") 意为表达式错误(错误的符号".5 + 1.3")

echo "b = $b"       # b=1