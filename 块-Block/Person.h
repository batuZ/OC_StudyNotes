//
//  Person.h
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//无参无返
-(void)useBlock:(void(^)(void)) block;

//有参无返
-(void)useBlock1:(void (^)(NSString*))block;

//有参有返
-(void)useBlock2:(NSInteger (^)(NSInteger,NSInteger))block;

-(void)reLoad;
@end
