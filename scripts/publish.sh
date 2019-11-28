#!/usr/bin/env bash

# ---------------------------------------------------------------------------------
# 控制台颜色
BLACK="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
CYAN="\033[1;36m"
RESET="$(tput sgr0)"
# ---------------------------------------------------------------------------------

printf "${BLUE}>>>>>>>> 发布 gh-pages${RESET}\n"
root=$(dirname $(pwd))

if [[ ! -d ${root}/publish ]]; then
  printf "${RED} ${root}/publish 目录不存在${RESET}\n"
  sh ./build.sh
fi

cd ${root}/publish
git init
git commit --allow-empty -m "update templates"
git checkout -b gh-pages && git add .
git commit -am "update templates"
git push git@github.com:dunwu/gitbook-templates gh-pages --force"
