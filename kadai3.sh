#!/bin/sh

#チェック1
if [ $# -lt 2 ]; then
        echo "引数の数が足りません"
        exit
fi

#チェック2
if [ $1 -gt 0 ] 2>/dev/null ;then
        if [ $2 -gt 0 ] 2>/dev/null ;then
        	continue
	else
                echo "数字を入力してください" 
                exit 
        fi
else
  echo "数字を入力してください" 
  exit 
fi


# check2
if [ $# -gt 2 ]; then
        echo "引数の数は２つまでです"
        exit 
fi


#最大公約数の計算
gcd()
{
   if [ $2 -eq 0 ]; then
      echo $1
   else
      gcd $2 `expr $1 % $2`
   fi
}
gcd $1 $2
