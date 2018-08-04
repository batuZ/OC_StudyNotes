//
//  Student.m
//  自定义类型排序
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithName:(NSString*)name age:(NSUInteger)age sex:(Sex*)sex{
    self = [super init];
    if(self){
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;
}
//比较名字
-(NSComparisonResult)compareName:(Student*)other{
    return [self.name compare:other.name];
}
//比较年龄
-(NSComparisonResult)compareAge:(Student*)other{
    if (self.age > other.age) {
        return NSOrderedDescending;
    }else if (self.age < other.age){
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
    }
}
//比较性别
-(NSComparisonResult)compareSex:(Student*)other{
    if (self.sex > other.sex) {
        return NSOrderedDescending;
    }else if (self.sex < other.sex) {
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
    }
}
//重写格式化输出
-(NSString*)description{
    return [NSString stringWithFormat:@"%@ %lu %lu",self.name,self.age,self.sex];
}
@end
