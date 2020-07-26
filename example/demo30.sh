echo demo30.sh-----------------
#!/bin/bash

# 未经处理的地址资料

clear # 清屏.
echo "          我的简历"
echo "          ------- "
echo "下面通过shell脚本输出我的简历" 
echo
echo "[B]asicinfo, 基本信息"
echo "[E]ducation, 教育经历"
echo "[I]tskill, IT 技能"
echo

while [ 1=1 ]
do
    read person
    case "$person" in
    # 注意,变量是被引用的.
      "B" | "b" )
      # 接受大写或小写输入.
      echo
      echo "小弟调调"
      echo "手  机 : 136*****13"
      echo "E-mail : wowohoo@qq.com"
      echo "首  页 : http://JSLite.io"
      ;;
      # 注意,在每个选项后边都需要以;;结尾.

      "E" | "e" )
      # 接受大写或小写输入.
      echo "■ 2003年9月 到 2006年8月"
      echo "----------------------------"
      echo "› 学校 : 野鸟高中"
      echo "› 专业 : 艺术类"
      echo "› 学历 : 高中"
      ;;

      # 后边的Smith和Zane的信息在这里就省略了.

      "I" | "i" )
      # 接受大写或小写输入.
      echo "■ 2003年9月 到 2006年8月"
      echo "----------------------------"
      echo "› 技能:HTML | 使用时间:N | 掌握程度:精通 | 说明:这…我写出来好吗？"
      echo "› 技能:CSS | 掌握程度:精通 | 说明:我选择使用Stylus写CSS"
      echo "› 技能:git | 掌握程度:熟练"
      ;;
      # 后边的Smith和Zane的信息在这里就省略了.
              * )
       # 默认选项.
       # 空输入(敲RETURN).
       echo
       echo "没有数据！"
      ;;
    esac
    echo

    echo
    echo "[B]asicinfo, 基本信息"
    echo "[E]ducation, 教育经历"
    echo "[I]tskill, IT 技能"
    echo
done
#  练习:
#  --------
#  修改这个脚本,让它能够接受多输入,
#+ 并且能够显示多个地址.

exit 0
