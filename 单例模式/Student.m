//
//  Student.m
//  单例模式
//
//  Created by 张智 on 2018/7/29.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Student.h"

@implementation Student
+(instancetype)getInstance:(NSInteger)index{
    //这行只会在首次访问时执行一次,得到一个静态变量
    static Student* s = nil;
    
    //1、保证self对象在同一时间只能被一个线程访问
    //    @synchronized(self){
    //        if(p==nil){
    //            p = [[Person alloc]init];
    //        }
    //    }
    
    //2、保证此代码只被执行一次
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken,^{
        if(s==nil){
            s = [[Student alloc]init];
        }
    });
    return s;
}
@end
