echo demo19.sh-----------------
#!/bin/bash
# substring-extraction.sh

String=23skidoo1
#      012345678    Bash
#      123456789    awk
# 注意上面两个程序对索引的不同处理:
# Bash把字符串的第一个字符的标号称为'0'.
# Awk把字符串的第一个字符的标号称为'1'.

echo ${String:2:4} # position 3 (0-1-2), 4 characters long
                                         # skid

# 在awk中与Bash的${string:pos:length}等同的是substr(string,pos,length).
echo | awk '{ 
  print substr("'"${String}"'",3,4)      # skid
}'
#  用一个空的"echo"由管道传一个空的输入给awk,
#+ 这样就不必提供一个文件名给awk.

exit 0