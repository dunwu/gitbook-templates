@echo off
echo [INFO] Publis _book to gh-pages.
cd ../_book
git init
git commit --allow-empty -m "update book"
git checkout -b gh-pages && git add .
git commit -am "update book"
git push git@github.com:zp1024/gitbook-notes gh-pages --force"
