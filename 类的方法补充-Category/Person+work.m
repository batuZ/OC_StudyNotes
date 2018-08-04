//
//  Person+work.m
//  类的方法补充-Category
//
//  Created by 张智 on 2018/7/27.
//  Copyright © 2018年 gvitech. All rights reserved.
//
#import "Person.h"
#import "Person+work.h"

static NSInteger _age;

@implementation Person (work)

-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString*)name{
    return _name;
}

+(NSInteger)sleep{
    return _age;
}

@end
