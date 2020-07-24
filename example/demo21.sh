echo demo21.sh-----------------
#!/bin/bash
# 变量替换和"usage"信息

: ${1?"Usage: $0 ARGUMENT"}
#  如果没有提供命令行参数则脚本在这儿就退出了,
#+ 并打印了错误信息.
#    usage-message.sh: 1: Usage: usage-message.sh ARGUMENT

echo "These two lines echo only if command-line parameter given."
echo "command line parameter = \"$1\""

exit 0  # 仅在命令行参数提供时，才会在这儿退出.

# 分别检查有命令行参数和没有命令行参数时的退出状态。
# 如果有命令行参数,则"$?"为0.
# 否则, "$?"为1.