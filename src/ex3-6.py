#!/usr/bin/env python3
import sys
if len(sys.argv) < 3:
    print("사용법: ex3-6.py <인자1> <인자2>")
    exit(1)
print("시작")
print("인자:", ", ".join(sys.argv[1:]))
print("종료")
