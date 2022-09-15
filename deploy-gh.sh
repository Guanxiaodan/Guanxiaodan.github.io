# 终止一个错误 若指令传回值不等于0，则立即退出shell。
set -e
# 先提交源文件
git add .
git commit -m 'typescript'
git push
# 生成静态资源
npm run docs:build
# 进入生成的构建文件夹 gh-pages
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'typescript'
# git push -f https://github.com/Guanxiaodan/Guanxiaodan.github.io.git master
git push -f https://github.com/Guanxiaodan/guanxiaodan.github.io.git master:gh-pages
cd ..
rm -rf ./dist

# 如果在git push -f这个阶段有问题，尝试以下命令
# git remote add origin git@github.com:Guanxiaodan/guanxiaodan.github.io.git
# gco -b gh-pages
# git push --set-upstream origin gh-pages
# git push -f origin gh-pages
