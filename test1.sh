#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}

#テスト1#
echo "引数の数が足りません" > $tmp-ans
./kadai3.sh 2 > $tmp-err || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
