#!/bin/bash

# .bashrc에 환경 변수 추가
grep -qxF 'export MYENV="Hello Shell"' ~/.bashrc 2>/dev/null
if [ $? -ne 0 ]; then
    echo 'export MYENV="Hello Shell"' >> ~/.bashrc
fi
source ~/.bashrc
echo "[ex3-0] 현재 셸에서 MYENV 값:" $MYENV
bash -i -c 'echo " - MYENV in new shell: $MYENV"'
sed -i '/export MYENV="Hello Shell"/d' ~/.bashrc
unset MYENV
echo "[ex3-0] MYENV 변수 해제 완료."
bash -i -c 'echo " - MYENV in new shell after removal: $MYENV"'
