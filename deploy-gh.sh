# 终止一个错误 若指令传回值不等于0，则立即退出shell。
set -e
# 先提交源文件
git add .
git commit -m '提交源文件'
git push
# 生成静态资源
npm run docs:build
# 进入生成的构建文件夹 gh-pages
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
# git push -f https://github.com/Guanxiaodan/Guanxiaodan.github.io.git master
git push -f https://github.com/Guanxiaodan/guanxiaodan.github.io.git master:gh-pages

# #!/usr/bin/env sh

# # 确保脚本抛出遇到的错误
# set -e

# # 生成静态文件
# # cd docs
# # vuepress build
# npm run docs:build

# # 进入静态文件的文件夹
# cd docs/.vuepress/dist

# # 如果是发布到自定义域名
# # echo 'www.example.com' > CNAME

# git init
# git add -A
# git commit -m 'deploy'

# # 如果发布到 https://<USERNAME>.github.io/<REPO>
# # git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
# # git push origin 本地分支:远端希望创建的分支
# git push -f https://github.com/Guanxiaodan/guanxiaodan.github.io.git master:gh-pages

# cd -