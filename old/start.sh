#!/bin/bash
# Nginxをバックグラウンドで起動
# nginx -g 'daemon off;' &
# nginx &

# # Tomcatを起動
# exec catalina.sh run

# echo "start up container..."

# 初回実行時に時間と文字列を標準ログに出力
echo "$(date) - Shell script started."

# 10秒おきに標準ログに出力する無限ループ
while true; do
    echo "$(date) - 10 seconds passed."
    sleep 10
done
