#!/bin/bash
echo "1) 사용자 2) CPU 3) 메모리 4) 디스크"
read -p "선택: " c
case $c in
1) whoami;;
2) top -b -n1 | head -5;;
3) free -h;;
4) df -h;;
*) echo "잘못됨";;
esac
