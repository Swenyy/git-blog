#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
#npm run build
yarn build


# 进入生成的文件夹
# cd docs/.vuepress/dist
cd public

# 如果是发布到自定义域名
# echo 'zhaoshier.top' > CNAME

git init
git add -A
date=`date +%Y-%m-%d_%H:%M:%S`
git commit -m "deploy ${date}"

# 如果你想要部署到 https://<USERNAME>.github.io
# git push -f git@github.com:zhaoshier/zhaoshier.github.io.git master
git push -f git@github.com:Swenyy/Swenyy.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>  REPO=github上的项目
# git push -f git@github.com:zhaoshier/vuepress.git master:gh-pages

cd -
