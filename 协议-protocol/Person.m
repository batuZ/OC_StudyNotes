//
//  Person.m
//  协议-protocol
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark 实现协议
-(void)doWork{
    
}

-(NSInteger)func:(NSString*)str{
    NSLog(@"%@",str);
    return 110;
}

//实现可选
-(void)doubleWork{
    
}
@end
