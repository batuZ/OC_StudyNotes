//
//  workerDelegate.h
//  协议-protocol
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
/*
 类似接口，用来要求类必须实现什么函数
 也可以约束一个泛形属性，被指定的值必须带有什么函数
 */

#import <Foundation/Foundation.h>

@protocol workerDelegate <NSObject>

@required//必须实现(默认)
-(void)doWork;

//通过协议传值
//参数为正向传值，返回值为反向传值
-(NSInteger)func:(NSString*)str;

@optional//可选实现
-(void)doubleWork;

@end
