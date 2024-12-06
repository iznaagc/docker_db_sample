#!/bin/bash

# crond をバックグラウンドで起動
crond -n &

# start.sh をフォアグラウンドで実行
./start.sh
