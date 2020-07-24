echo demo17.sh-----------------

# Bash版本信息:

for n in 0 1 2 3 4 5
do
  echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done  

# BASH_VERSINFO[0] = 3                      # 主版本号.
# BASH_VERSINFO[1] = 00                     # 次版本号.
# BASH_VERSINFO[2] = 14                     # 补丁级.
# BASH_VERSINFO[3] = 1                      # 编译版本.
# BASH_VERSINFO[4] = release                # 发行状态.
# BASH_VERSINFO[5] = i386-redhat-linux-gnu  # 结构体系
                                            # (和变量$MACHTYPE相同).

# 安装在系统里的Bash版本
echo $BASH_VERSION

# 在目录堆栈里面最顶端的值
echo $DIRSTACK  