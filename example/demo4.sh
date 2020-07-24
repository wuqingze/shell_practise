echo demo4.sh-----------------

script_name=`basename $0`
echo "The name of this script is $script_name."

textfile_listing=`ls -l *`
# 变量中包含了当前工作目录下所有的
echo $textfile_listing | sed -n 's/ /\r/gp'
#echo "$textfile_listing"
echo hello
echo hello1
echo hello2
echo hello3
