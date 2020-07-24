echo demo14.sh-----------------
#!/bin/bash

echo hello
echo $?    # 因为上一条命令执行成功，打印0.

lskdf      # 无效命令.
echo $?    # 因为上面的无效命令执行失败，打印一个非零的值.

echo

exit 113   # 返回113状态码给shell.
           # 可以运行脚本结束后立即执行命令"echo $?" 检验.

#  依照惯例,命令'exit 0'表示执行成功,
#+ 当产生一个非零退出值时表示一个错误或是反常的条件。