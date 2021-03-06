#!/bin/bash
echo demo28.sh-----------------
# 将目录中的符号连接文件名保存到一个文件中

OUTFILE=symlinks.list # 保存的文件

directory=${1-`pwd`}
echo `pwd`
echo directory:$directory
#  如果没有其他的特殊指定,
#+ 默认为当前工作目录.


echo "symbolic links in directory \"$directory\"" > "$OUTFILE"
echo "---------------------------" >> "$OUTFILE"

#for file in "$( find $directory -type l )"    # -type l 为寻找类型为符号链接的文件
for file in "$( find $directory -type f )"    # -type l 为寻找类型为符号链接的文件
do
  echo "$file"
done | sort >> "$OUTFILE"     # 循环的输出
