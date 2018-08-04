//
//  Person.m
//  捕获异常
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)func:(NSInteger) num{
    if(num>5)
    {
        //使用自定义的异常信息
        MyException* ex = [MyException exceptionWithName:@"AAA" reason:@"CCC" userInfo:nil];
        @throw ex;
    }
}
@end
