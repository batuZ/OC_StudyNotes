//
//  Person.m
//  类和实例
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"
//全局变量
NSInteger _COUNT = 9;

//静态成员变量
static BOOL _isLog = YES;

@implementation Person

//默认的构造方法，可以重写，重写时不需要在头中声明
- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"";
        _age = 0;
        _length = 0.0;
    }
    return self;
}

//自定义的构造方法
-(instancetype)initWithName:(NSString*)name{
    self = [super init];
    if(self){
        _name=name;
    }
    return self;
}

//自定义set\get方法
-(void)setName:(NSString*)newName{
    self->_name = newName;
}
-(NSString*)name{
    return _name;
}

//定义成员方法
- (void)fun_1{}

- (NSInteger)count:(NSObject *)tag{
    return 0;
}

-(NSString *)findNameByID:(NSInteger)id from:(NSArray *)arr{
    return @"";
}
//定义静态方法
+(BOOL)isLog{
    return _isLog;
}
+(void)setIsLog:(BOOL)islog{
    _isLog = islog;
}

//用静态方法创建静态变量
+(instancetype) getInstance:(NSInteger)index{
    //这行只会在首次访问时执行一次
    static Person* p = nil;
    
    //1、保证self对象在同一时间只能被一个线程访问
    //    @synchronized(self){
    //        if(p==nil){
    //            p = [[Person alloc]init];
    //        }
    //    }
    
    //2、保证此代码只被执行一次
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken,^{
        if(p==nil){
            p = [[Person alloc]init];
        }
    });
    return p;
}
@end
