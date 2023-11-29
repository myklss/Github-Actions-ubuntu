# 1分钟使用github部署一个临时ubuntu服务器

使用github的actions部署ubuntu服务器用来编译程序测试程序等操作

使用方法:fork项目后点击actions后选择Github-Actions-ubuntu，点击Run workflow

进入build任务，等待到Use tmate connect ssh步骤后看到SSH: ssh xxx@xxx.tmate.io

其中xxx.tmate.io为ssh的连接地址,@前面的xxx为用户名，使用putty等工具登录即可

编译程序后或者要把程序生成上传到actions完成任务的Artifacts中则需要把文件移动到up目录即可
