#!/bin/bash

ERROR_EXIT () {
	echo "$1" >&2
	rm -f /tmp/$$-*
	exit 1
}


./hello.sh > /tmp/$$-result

echo "hello" > /tmp/$$-ans
echo "world" >> /tmp/$$-ans

diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "test1-1 で失敗"


echo "すべてのテストをクリアしました"
rm /tmp/$$-*
