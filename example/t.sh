for f in `ls | grep demo`
do
    echo $f
    when-changed $f ./$f > t &
done
