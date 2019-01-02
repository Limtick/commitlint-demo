#!/usr/bin/env sh

# run this in a git directory and makesure npm init first

# prompt https://marionebl.github.io/commitlint/#/guides-use-prompt?id=provide-a-shortcut
npm install --save-dev @commitlint/{cli,config-conventional,prompt-cli}

echo "module.exports = {extends: ['@commitlint/config-conventional']};" > commitlint.config.js

# https://marionebl.github.io/commitlint/#/guides-local-setup?id=install-husky
npm install --save-dev husky

# https://github.com/conventional-changelog/conventional-changelog
npm install -g conventional-changelog-cli

# https://github.com/conventional-changelog/standard-version
npm i --save-dev standard-version
