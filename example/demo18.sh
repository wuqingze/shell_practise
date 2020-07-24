echo demo18.sh-----------------
# 子串提取
stringZ=abcABC123ABCabc
#       0123456789.....
#       以0开始计算.

echo ${stringZ:0}                            # abcABC123ABCabc
echo ${stringZ:1}                            # bcABC123ABCabc
echo ${stringZ:7}                            # 23ABCabc
echo ${stringZ:7:3}                          # 23A
                                             # 提取的子串长为3



# 有没有可能从字符串的右边结尾处提取?
    
echo ${stringZ:-4}                           # abcABC123ABCabc
# 默认是整个字符串，就相当于${parameter:-default}.
# 然而. . .

echo ${stringZ:(-4)}                         # Cabc 
echo ${stringZ: -4}                          # Cabc
# 这样,它可以工作了.
# 圆括号或附加的空白字符可以转义$position参数.


#-------------------------------------------------------------------------
#
# expr "$string" : '\($substring\)'
# 从$string字符串左边开始提取由$substring描述的正则表达式的子串。
# 
#-------------------------------------------------------------------------


stringZ=abcABC123ABCabc
#       └┈┈┈┈┈┈┈┈┈┈┈┈┈┈

# 下面被我注释的例子在我 Mac上报错，这个看上去是 bash 的版本问题
# echo `expr match "$stringZ" '\(.[b-c]*[A-Z]..[0-9]\)'`   # abcABC1
echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`       # abcABC1
echo `expr "$stringZ" : '\(.......\)'`                   # abcABC1
# 上面的每个echo都打印相同的结果.