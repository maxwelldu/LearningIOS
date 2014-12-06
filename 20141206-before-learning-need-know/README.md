学习IOS开发的准备

* 英文水平：看懂26个英文字母
* 计算机专业：不要求计算机专业，但得有脑子
* 学习态度：积极思考、积极动手、能吃苦、有兴趣
* 编程语言：C语言、C++（可选）、Objective-C
* 开发工具：Xcode
* 电脑系统：Mac OS X
* 真机设备：iPhone、iPad等（可选）
* IOS证书：调试证书（可选）、发布证书（可选）



//小案例：给应用程序的图标上面添加数字

```Objective-C
//判断如果是IOS8的话需要加上下面两行代码
UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
[[UIApplication sharedApplication] registerUserNotificationSettings:settings];
			    
//IOS8之前只需要这一句话
[UIApplication sharedApplication].applicationIconBadgeNumber = 10;
```


执行一个3D动画
先导入框架
#import <QuartzCore/QuartzCore.h>

CATransition *ca = [CATransition animation];
//    ca.type = @"cube";    //3D
//    ca.type = @"rippleEffect";//水波
ca.type = @"pageCurl";//翻页
ca.duration = 1;
[self.view.layer addAnimation:ca forKey:nil];

文件操作
复制：Command + C   
粘贴：Command + V
回退：Command + Z
保存：Command + S

窗口操作
关闭窗口：Command + W
退出程序：Command + Q
管理多个桌面：Ctrl + ↑
切换程序窗口：Command（长按） + tab
切换输入法：Command（长按） + 空格

Mac系统采用的是UNIX文件系统，所有的文件都放在根目录/下面，因此没有Windows中分C盘、D盘的概念，文件路径就不再有盘符
Windows中  c:/users/mj/desktop
Mac中      /users/mj/desktop

常见文件夹
用户的个人文件夹（apple是用户名）：/Users/apple
桌面：/Users/apple/Desktop
文稿：/Users/apple/Documents
下载：/Users/apple/Downloads
应用程序：/Users/apple/Applications


常见Unix指令
因为Mac系统是基于UNIX系统的，因此可以在“终端”中输入一些UNIX指令来操作Mac系统。比如：新建文件\文件夹、打开文件\文件夹

常用的UNIX指令：(需要经常使用才不容易忘记)
ls –l	列出当前目录下的所有内容（文件\文件夹）
pwd		显示出当前目录的名称
cd		改变当前操作的目录
who		显示当前用户名
clear		清屏
mkdir		新建一个目录
touch		新建一个文件（文件不存在才会新建）
open		打开一个文件\文件夹
按一下tab键，可以自动补齐指令名称、文件名、文件夹名等
（上述指令均可以在百度上搜索到具体用法）
