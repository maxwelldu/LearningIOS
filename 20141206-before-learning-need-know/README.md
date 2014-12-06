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
