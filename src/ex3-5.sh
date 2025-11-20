#!/bin/bash
run_cmd() {
    local cmd="$*"
    echo "[실행]: $cmd"
    eval "$cmd"
}
read -p "명령 입력: " user_cmd
run_cmd $user_cmd
