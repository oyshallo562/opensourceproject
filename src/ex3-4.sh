#!/bin/bash
scores=()
while true; do
echo "1) 추가 2) 보기 3) 평균 4) GPA 5) 종료"
read -p "선택: " c
case $c in
1) read -p "성적: " s; scores+=("$s");;
2) echo "${scores[@]}";;
3) sum=0; for s in "${scores[@]}"; do sum=$((sum + s)); done
[ ${#scores[@]} -eq 0 ] && echo "없음" || echo $((sum / ${#scores[@]}));;
4) sum=0; for s in "${scores[@]}"; do sum=$((sum + s)); done
[ ${#scores[@]} -eq 0 ] && echo "없음" && continue
avg=$((sum / ${#scores[@]}))
if [ $avg -ge 90 ]; then g=4.0
elif [ $avg -ge 80 ]; then g=3.0
elif [ $avg -ge 70 ]; then g=2.0
elif [ $avg -ge 60 ]; then g=1.0
else g=0.0; fi
echo "GPA: $g";;
5) break;;
*) echo "잘못된 입력";;
esac
done
