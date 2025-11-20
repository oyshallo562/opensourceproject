#!/bin/bash
if [ $# -ne 2 ]; then echo "사용법: $0 <정수1> <정수2>"; exit 1; fi
expr='^-?[0-9]+$'
if [[ ! $1 =~ $expr || ! $2 =~ $expr ]]; then echo "오류: 정수만 입력하세요."; exit 1; fi
a=$1; b=$2
echo "덧셈: $((a + b))"; echo "뺄셈: $((a - b))"
echo "곱셈: $((a * b))"
if [ $b -ne 0 ]; then echo "나눗셈: $((a / b))"; else echo "나눗셈: 0으로 나눌 수 없음"; fi
