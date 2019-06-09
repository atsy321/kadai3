#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}



echo "数字を入力してください" > $tmp-ans
./kadai3.sh a b > $tmp-err || ERROR_EXIT "TEST3-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST3-2"

echo OK
rm -f $tmp-*
exit 0

