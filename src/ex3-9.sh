#!/bin/bash
DB=DB.txt; touch $DB
while true; do
echo "1) 팀원 추가 2) 수행 기록 3) 이름 검색 4) 날짜 검색 5) 종료"
read -p "선택: " c
case $c in
1) read -p "이름: " n; read -p "생일: " b; read -p "전화: " p; echo "$n, $b, $p" >> $DB;;
2) read -p "날짜: " d; read -p "내용: " m; echo "$d, $m" >> $DB;;
3) read -p "이름 검색: " k; grep -i "$k" $DB;;
4) read -p "날짜 검색: " d; grep "$d" $DB;;
5) break;;
*) echo "잘못됨";;
esac
done
