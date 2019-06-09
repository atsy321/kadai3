#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}

#テスト２
echo "引数の数は２つまでです" > $tmp-ans
./kadai3.sh 22 33 44 >$tmp-err || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0
