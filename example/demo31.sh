echo demo31.sh-----------------
#!/bin/bash

PS3='选择你喜欢的蔬菜: ' # 设置提示符字串.

echo
select vegetable in "豆" "胡萝卜" "土豆" "洋葱" "芜菁甘蓝"
do
  echo
  echo "你最喜欢的蔬菜是 $vegetable 。"
  echo "讨厌!"
  echo
  break  # 如果这里没有'break'会发生什么?
done
exit 0