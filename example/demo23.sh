echo demo23.sh-----------------
#!/bin/bash

func1 ()
{
echo This is a function.
}

declare -f        # 列出上面的函数.

echo

declare -i var1   # var1是一个整数.
var1=2367
echo "var1 declared as $var1"
var1=var1+1       # 整数声明后，不需要使用'let'.
echo "var1 incremented by 1 is $var1."
# 试图将已声明为整数的变量的值更改为浮点值.
echo "Attempting to change var1 to floating point value, 2367.1."
var1=2367.1       # 引起一个错误信息，此变量的值保持原样.
echo "var1 is still $var1"

echo

declare -r var2=13.36         # 'declare'允许设置变量的属性，
                              #+ 同时也给变量赋值.
echo "var2 declared as $var2" # 试图更改只读变量的值.
var2=13.37                    # 引起错误，并且从脚本退出.

echo "var2 is still $var2"    # 这行不会被执行.

exit 0                        # 脚本不会从这儿退出.