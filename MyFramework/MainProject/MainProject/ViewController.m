//
//  ViewController.m
//  MainProject
//
//  Created by 张智 on 2018/12/1.
//  Copyright © 2018 OPENAL_EXAMPLE. All rights reserved.

/**         参考资料
 
    iOS 库.a 和 framework的区别和创建
    https://www.jianshu.com/p/d2d15c2cb7de
 
    iOS 静态库 与 demo 联合调试
    https://www.cnblogs.com/richard-youth/p/7754801.html
 
 
    framework 工程注意事项
 
 1、BuildSetting >> Architectures >> Build Active Architecture : NO 对应所有环境
                                                YES 只针对当前环境，快
 2、BuildSetting >> Linking>>Mach-O Type : Static Library 动态的引用时会报错
 3、BuildPhases >> Headers >> 指定需要公开的头文件
 4、在自动生成的.h文件中引用一下共开的头文件，如：#import <Module_A/Person.h>
    或者不共开自动生成的.h文件，自己定义一个.h文件，来汇总其它头文件。
 5、framework支持版本(真机、模拟器),查看《iOS 库.a 和 framework的区别和创建》
 
    mainProject 工程引用方法
 
 1、直接拖进工程：操作简单
    选择 copy if needed，会自动执行下面a\b两项操作
 
 2、设置引用路径：可以在多个不相关的工程中复用，又不会被重复备份
    把编译好的xx.framework文件拖进如下两个位置
    a、General >> Linked Frameworks and Libraries，把库指定进工程
    b、Build Setting >> Search Paths >> Framework Search Paths，指定库所在的目录
 
 3、把 framework.xcodeproj 文件拖进main工程：用来调试framewrok
    设置依赖,保证编译时framework也同步更新，Build Setting >> Taget Dependencies 增加拖入的工程
    a、只是引入了工程文件，并没有copy进来所有工程内容，可以多个工程中引用,不会被重复备份
    b、如果不能展开，说明framework工程被打开，或在某个打开的工程中被引用
    c、可以在framework的代码中打断点

 ---------------------------------------------------
 
 
 */

#import "ViewController.h"
#import <Module_A/Person.h>
#import <Module_B/Book.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[[Person alloc]init] sayHello];
    [[[Book alloc]init]testFunc];
}


@end
