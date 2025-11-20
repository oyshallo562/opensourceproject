#!/bin/bash
read -p "점수들 입력 (공백): " -a scores
while [ ${#scores[@]} -lt 2 ]; do
    echo "2개 이상 입력하세요."; read -a scores
done
total=0
for s in "${scores[@]}"; do
    [[ $s -ge 90 ]] && g=A || g=B
    echo "$s: $g"; total=$((total + s))
done
avg=$((total / ${#scores[@]}))
[[ $avg -ge 90 ]] && ga=A || ga=B
echo "평균: $avg, 평균 등급: $ga"
