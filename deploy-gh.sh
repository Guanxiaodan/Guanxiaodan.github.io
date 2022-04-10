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
cd ..
rm -rf ./dist

