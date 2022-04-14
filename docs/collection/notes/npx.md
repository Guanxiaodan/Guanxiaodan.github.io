# npx

参考文档：https://www.ruanyifeng.com/blog/2019/02/npx.html

##

npx 想要解决的主要问题，就是调用<font color=pink>项目内部</font>安装的模块，比如：项目内部安装了测试工具 Mocha。

一般来说，调用 Mocha ，只能在项目脚本和 package.json 的 scripts 字段里面， 如果想在命令行下调用，必须像下面这样。

`node-modules/.bin/mocha --version`

npx 就是想解决这个问题，让项目内部安装的模块用起来更方便，只要像下面这样调用就行了

`npx mocha --version`

npx 的原理很简单，<font color=pink>就是运行的时候，会到 node_modules/.bin 路径和环境变量$PATH 里面，检查命令是否存在。</font>

由于 npx 会检查环境变量$PATH，所以系统命令也可以调用。

`npx ls`

注意，Bash 内置的命令不在$PATH 里面，所以不能用。比如，cd 是 Bash 命令，因此就不能用 npx cd。
