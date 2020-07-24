echo demo22.sh-----------------

echo `basename $PWD`        # 当前工作目录的基本名字.
echo "${PWD##*/}"           # 当前工作目录的基本名字.
echo
echo `basename $0`          # 脚本名.
echo $0                     # 脚本名.
echo "${0##*/}"             # 脚本名.
echo
filename=test.data
echo "${filename##*.}"      # data
                            # 文件的扩展名.
