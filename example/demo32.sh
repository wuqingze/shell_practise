#!/bin/bash
echo demo32.sh-----------------

PS3='选择你喜欢的蔬菜:  '
echo
choice_of(){
  select vegetable
  # [in list] 被忽略, 所以'select'用传递给函数的参数.
  do
    echo
    echo "你最喜欢的蔬菜是  $vegetable。"
    echo "讨厌!"
    echo
    break
  done
}

choice_of "豆" "米饭" "胡萝卜" "土豆" "洋葱" "芜菁甘蓝"
#         $1   $2     $3      $4    $5     $6
#         传递给choice_of() 函数的参数

exit 0
