//
//  main.m
//  类的方法补充-Category
//
//  Created by 张智 on 2018/7/27.
//  Copyright © 2018年 gvitech. All rights reserved.
/*
 
 Category 补充已有类型的方法，不能增加成员变量,但可以增加静态变量
 
 作用：
 1、为已有类增加方法，但不修改原代码
 2、团队分工
 3、增加成员变量的访问方法
 4、不用继承，不用声明，重写已有类的方法
 5、消息传递的优先级：
 Category >> @implementation >> 父类的Category >> 父类的@implementation
 6、非正式协议
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+work.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* p = [Person new];
        p.name = @"BT";
        NSLog(@"%@",p.name);
        [Person sleep];
    }
    return 0;
}
