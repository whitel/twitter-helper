# 推特格式转换器

## 缘起

由于最近在推特分析一些人物的特征，因此需要有方法来获取一个关于某人所有推特的总览视角，例如爬下某人的所有推特（使用推特自带的功能并不容易达到该要求）。



## 使用方法

+ 拷贝本项目到本地：`git clone https://github.com/whitel/twitter-helper`
+ 切换到项目目录下：`cd twitter-helper`
+ 登录https://www.allmytweets.net/，并输入欲分析的用户名，获取所有tweets数据
+ 复制内容，粘贴到本地文件data.md（这里推荐用typora，可以保存超链接等格式信息）【todo：改为使用纯文本api来爬取】
+ 运行脚本：`./do.sh data.md`



## 脚本做了什么？

+ 对推特进行逆序
+ 去掉多余的链接logo
+ 美化日期显示【todo：把格式切换为%Y-%m-%d的样式】
