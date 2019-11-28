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

printf "\n${BLUE}>>>>>>>> 构建所有模板${RESET}\n\n"

nvm install 10.16.2
nvm use 10.16.2

root=$(dirname $(pwd))

rm -rf ${root}/publish
mkdir -p ${root}/publish/api
mkdir -p ${root}/publish/faq
mkdir -p ${root}/publish/doc

printf "\n${CYAN}>>>> 构建 api-template${RESET}\n\n"
cd ${root}/templates/api-template
npm install
npm run build
cd _book
rm -rf **/*.md
cp -rf ${root}/templates/api-template/_book/* ${root}/publish/api/

printf "\n${CYAN}>>>> 构建 doc-template${RESET}\n\n"
cd ${root}/templates/doc-template
npm install
npm run build
cd _book
rm -rf **/*.md
cp -rf ${root}/templates/doc-template/_book/* ${root}/publish/doc/

printf "\n${CYAN}>>>> 构建 faq-template${RESET}\n\n"
cd ${root}/templates/faq-template
npm install
npm run build
cd _book
rm -rf **/*.md
cp -rf ${root}/templates/faq-template/_book/* ${root}/publish/faq/

printf "\n${GREEN}<<<<<<<< 构建结束${RESET}\n"
