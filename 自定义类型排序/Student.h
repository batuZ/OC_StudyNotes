//
//  Student.h
//  自定义类型排序
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum SexType{boy=0,girl=1}Sex;

@interface Student : NSObject

@property (strong,nonatomic)NSString* name;
@property (assign,nonatomic)NSUInteger age;
@property (assign,nonatomic)Sex* sex;
//自定义构造函数
-(instancetype)initWithName:(NSString*)name age:(NSUInteger)age sex:(Sex*)sex;
//比较名字
-(NSComparisonResult)compareName:(Student*)other;
//比较年龄
-(NSComparisonResult)compareAge:(Student*)other;
//比较性别
-(NSComparisonResult)compareSex:(Student*)other;
@end
