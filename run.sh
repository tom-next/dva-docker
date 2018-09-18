#!/usr/bin/env bash
set -e
set -x

export NODE_ENV="${NODE_ENV:-development}"

if [ $NODE_ENV == "development" ]; then
  # this runs webpack-dev-server with hot reloading
  yarn run start
else
  # build the app 
  yarn run build
  # 这里要启动nginx容器，先将 build 之后的文件 dist 移动到 nginx 下
fi