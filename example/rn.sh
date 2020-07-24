
for file in `ls | grep demo`
do
    echo "$file"
    #sed -i "/echo $file/d" $file
#    sed -i "1a\echo $file" $file
    sed -i "/echo $file/d" $file
    #sed -i "1i\echo $file" $file
    sed -i "1i\echo $file-----------------" $file
done
echo ------
