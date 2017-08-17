#!/bin/bash
ln -s /app/doc/node_modules/ node_modules
nvm use 6.2.2
npm set registry http://192.168.51.44
npm install
npm run build
rm -rf /app/doc/_book
mkdir -p /app/doc/_book
cp -Rf ./_book /app/doc/
