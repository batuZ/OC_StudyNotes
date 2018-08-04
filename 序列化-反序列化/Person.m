//
//  Person.m
//  序列化-反序列化
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithName:(NSString*)name age:(NSUInteger)age sex:(Sex*)sex{
    self = [super init];
    if(self){
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInteger:self.age forKey:@"age"];
    [aCoder encodeInteger:self.sex forKey:@"sex"];
}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.age = [aDecoder decodeIntegerForKey:@"age"];
    self.sex = [aDecoder decodeIntegerForKey:@"sex"];
    return self;
}

@end
