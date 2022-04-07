# 终止一个错误 若指令传回值不等于0，则立即退出shell。
set -e
cd docs
# 生成静态资源
vuepress build
# 进入生成的构建文件夹
cd .vuepress
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/Guanxiaodan/Guanxiaodan.github.io.git master