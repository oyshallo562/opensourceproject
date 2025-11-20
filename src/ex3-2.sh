#!/bin/bash
nums=()
while true; do
    read -p "실수 2개 이상 입력: " -a nums
    [ ${#nums[@]} -ge 2 ] && break
    echo "2개 이상 입력하세요."
done
for x in "${nums[@]}"; do
    y=$(echo "0.5 * ($x^2)" | bc -l)
    echo "$x -> $y"
done
