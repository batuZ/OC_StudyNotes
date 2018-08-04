//
//  DownLoader.h
//  代理
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.

/*
 要点
 1、委托就是在类里声明一个泛型属性master，谁要调用本类，谁就要把自己放在这个属性里
 2、调用者要实现本类制定的协议，在执行过程中会通过master，调用这些协议中定义的函数
 3、在本类调用master的函数时，可以操作master的属性，或向master传值
 
 */

#import <Foundation/Foundation.h>


@protocol downloadDelegate<NSObject>
//定制协议，确保使用本类的对象有以下函数。
//因为本类需要通过master这个替身调用这些函数。
-(void)finishDownload:(NSString*)msg;
@end

@interface DownLoader : NSObject
//委托人
@property (weak,nonatomic) id<downloadDelegate> master;

//功能主体
-(void)downLoadFromURL:(NSString*)url;

@end
