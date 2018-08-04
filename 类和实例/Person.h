//
//  Person.h
//  类和实例
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

//可以通过 control + command + ↑ 切换到定义
@interface Person : NSObject{
    //类成员变量声明区，默认为protected
    //访问权只能在这里使用，也就是说方法和属性是不能管理访问权的
    //OC要求成员变量必须是以_开始的变量名
    NSString* _name;
    NSUInteger _age;
    CGFloat _length;
    @public
    @protected
    @private
    @package
}

//方法\属性 声明区，在这里声明的才能够外部调用，未声明的方法只能在类内使用

#pragma mark ------ 属性 -------
@property (assign,nonatomic,readonly) NSUInteger age;
@property (strong,nonatomic) NSString* name;

#pragma mark -----自定义构造方法-----
-(instancetype)initWithName:(NSString*)name;

#pragma mark -----自定义set\get方法-----
-(void)setName:(NSString*)newName;
-(NSString*)name;

#pragma mark -----实例方法-----
-(void)fun_1;                                                   //无参无返
-(NSInteger)count:(NSObject*)tag;                               //返回整数，带一个参数
-(NSString*)findNameByID:(NSInteger)id from:(NSArray*)arr;      //多参

#pragma mark -----类方法-----
+(BOOL)isLog;
+(void)setIsLog:(BOOL)islog;
//用静态方法创建静态变量
+(instancetype) getInstance:(NSInteger)index;
@end
