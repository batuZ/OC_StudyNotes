//
//  main.m
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
/*
 A : 调用者
 B : Block
 C : 功能模块
 block的本质就是A让功能函数C，调用指定的函数体B，并让其把数据作为参数传出。
 A要使用C的功能，C要求A定义一个B，C在执行过程用将会调用B
 此时，C就可以把数据通过B的参数传给A。
 

 1、block不在OC框架内，是c的风格，所以不是对象
 返回值(^块名)(参数类型,...)=^(参数类型、名称，...){函数体}
 
 2、块可以把函数当参数用
 最大的作用是传值，可以用来代替简化委托
 
 3、block当作属性时要使用 copy!
 
 4、block可以访问当前所在区域内的变量，但访问的是副本，不可以修改
 如果要修改，要用 __block 修鉓一下，如：__block int a = 4;
 
 5、block里使用当前所在区域内的变量时，要使用weak指针，以防止循环引用导致的无法释放内存
 _weak Person* weakSelf = self;
 ^{
 weakSelf.name = @"bt"
 }
 */

#import <Foundation/Foundation.h>

void func(){}

//block的定义方法
void def_Blocks(){
    
    //无参无返, 类型：void(^)void  块名：block1
    void(^block1)(void) = ^{};
    
    //有参无返, 类型：void(^)(NSString*)  块名：block1
    void(^block2)(NSString*)=^(NSString* s){};
    
    //有参有返, 类型：int(^)(int,int)  块名：block1
    int(^block3)(int,int)=^(int a,int b){return a+b;};
}

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person* p = [Person new];
        
        [p useBlock: ^                              {NSLog(@"testMe!");}];
        [p useBlock1:^(NSString* msg)               {NSLog(@"testMe! %@",msg);}];
        [p useBlock2:^(NSInteger a ,NSInteger b)    {return a+b;}];
        
        //实例，download功能模块定义了下载功能，并要求调用者传入一个方法块
        //要求方法块带一个NSArray参数，供其调用，完成后downloader会执行此方法块
        //方法块由调用downloader的调用者定义，所以如何使用方法块中回传的参数，也由调用者决定
        
        [p reLoad];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
