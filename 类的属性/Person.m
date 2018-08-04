//
//  Person.m
//  类的属性
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _myName;
@synthesize hight = _hight;

-(void)setName:(NSString *)name{
    _myName = name;
    NSLog(@"%@",_myName);
}
-(void)setMyHight:(CGFloat)hight{_hight = hight;}
-(CGFloat)getMyHight{return _hight;}
@end
