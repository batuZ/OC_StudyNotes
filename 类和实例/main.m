//
//  main.m
//  类和实例
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //实例化对象
        
        //用默认构造方法
        Person* p = [Person new];
        [p setName:@"BT"];  //set
        p.name = @"Batu";   //set
        NSLog(@"%@",p.name);//get
        
        //用自定义的构造方法
        Person* k = [[Person alloc] initWithName:@"闻哥"];
        NSLog(@"%@",[k name]);//get
        
        //类方法获取静态成员
        [Person setIsLog:true];
        NSLog(@"res is %@",[Person isLog]?@"yes":@"no");
        
        NSLog(@"Done!");
    }
    return 0;
}
