显示当前目录下文件和文件夹的大小以及所有文件大小之和：ls -lht
显示当前目录所有文件大小之和：du -sh
查看1.sh文件的大小：du -s 1.sh
当前目录下每个文件和文件夹的大小：du -sh *
查看内存大小：free -m
查看CPU信息：cat /proc/cpuinfo或top （按q结束）
查看磁盘空间大小：df -hl
查看目前运行程序情况：ps -ef
查看剩余内存：free -ml
杀死程序：kill -9 pid号
编写程序：vim 1.c
运行程序：chmod +x 1.sh
         ./1.sh
写一个脚本：vim 1.sh
退出程序：esc :wq

sed命令：
sed -n "1p" 1.sh        只打印1.sh脚本第一行
sed "1p" 1.sh           不仅打印第一行还打印1.sh的全部内容
sed -n "1，2p" 1.sh     直接打印前两行
sed -n /read/p 1.sh     打印脚本中包含read的行
sed  /read/p 1.sh       打印脚本中包含read的行及全部内容
sed -n -e /read/p  -e /read=1.sh     打印脚本中包含read的匹配行及该行所在的行数
sed  '/read/a\#hello' 1.sh           在包含read的匹配行的下一行追加#hello内容
sed  '/read/i\#hello' 1.sh           在包含read的匹配行的上一行追加#hello内容
sed -n '$p' 1.sh                     打印脚本尾行
sed -n '2，3p' 1.sh                  打印第2，3行
sed  /read/c\#hello  1.sh            用#hello替换包含read的匹配行
sed "2d" 1.sh                        删除第二行 
sed /read/d 1.sh                     删除包含read的匹配行
sed 's/read/READ/' 1.sh              read替换为READ，然后输出全部内容
sed -n 's/read/READ/p' 1.sh          read替换为READ，打印包含read的匹配行，如果有多个read，则只改第一个
sed -n 's/read/READ/pg' 1.sh         所有的read替换为READ
sed -n 's/read/READ/pgw 2.txt' 1.sh  把变更定向输出到2.txt中

grep命令：
grep "read" d*                       显示所有以d开头的文件中包含read的行
grep "read" 文件1 文件2 文件3         显示在文件1，文件2，文件3中匹配read的行
grep "read" 文件1 --color=auto       查找特定的字符串并颜色显示
grep -v "read" 1.sh                  输出除包含read的匹配行之外的所有行
grep -c "read" 1.sh                  输出文件中包含匹配字符串的行数
grep "read" -n 1.sh                  输出文件中包含匹配字符串的行数及这一行
grep -1 "read" 文件1 文件2           搜索多个文件，并查找匹配文本在哪些文件中
grep -A 1 "read" 1.sh                搜索文件中包含read的匹配行，并显示该行和它的后一行
grep -in 'read' 1.sh                 忽略大小写查找特定字符串
grep -n "[ae]" 1.sh                  查找[]内的字符合集
grep -n "ea" 1.sh                    查找有ea的字符串，输出这行及行数
grep -n "[^e]a" 1.sh                 查找有a的字符串,但不要前面有e的
grep -n "[^a-z]oo" 1.sh              查找非小写字母的有oo的字符串
grep -n "[0-9]" 1.sh                 获取有数字的一行及行数
grep -n "^the" 1.sh                  查找以the开头的行，显示这一行及行数
grep -n "^[a-z]" 1.sh                查找以小写字母开头的行，显示这一行及行数
grep -n "^[a-zA-Z]" 1.sh             查找不是以英文字母开头的行，显示这一行及行数
grep -n "\.$" 1.sh                   查找结尾是小数点的行
grep -n "^$" 1.sh                    查找空白行
grep -n "0\{2\}" 1.sh                查找出现两个0的字符串
grep -n "0\{2,5\}g" 1.sh             查找出现2-5个0的后面接一个g的字符串
grep -n "0\{2,\}g" 1.sh              查找出现2个以上0的后面接一个g的字符串
