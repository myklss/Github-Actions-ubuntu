# 1分钟使用github部署一个临时ubuntu服务器

使用github的actions部署ubuntu服务器并ssh连接来编译程序测试程序等操作

使用方法:fork项目后点击actions后选择Github-Actions-ubuntu，点击Run workflow

进入build任务，等待到Use tmate connect ssh步骤

2个ssh连接方式:（Use tmate connect ssh步骤内）

方法1:点击：```Web shell: https://tmate.io/t/xxx```快捷键```ctrl+c```即可进入ssh


方法2:后看到SSH: ```ssh xxx@xxx.tmate.io```

其中xxx.tmate.io为ssh的连接地址,@前面的xxx为用户名，使用putty等工具登录即可

编译程序后把文件移动到up目录，输入```exit```命令

退出ssh后会自动执行后面的任务上传up目录的文件上传到actions完成任务的Artifacts中
