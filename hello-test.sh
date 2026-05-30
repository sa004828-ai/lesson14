#!/bin/bash

result=$(./hello.sh)			# 実行結果をansに
if [ $result = "hello" ] ; then		# resultの中身がhelloなら
  echo "OK"				# OK
  exit 0
else					# そうでないなら
  echo "NG"				# NG
  exit 1
fi

