//
//  Person.m
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"
#import "DownLoader.h"
@implementation Person
-(void)useBlock:(void(^)(void)) block{
    block();
}

-(void)useBlock1:(void(^)(NSString*)) block{
    block(@"test1");
}

-(void)useBlock2:(NSInteger (^)(NSInteger,NSInteger))block{
   NSInteger res = block(3,4);
    NSLog(@"%ld",res);
}

-(void)reLoad{
    DownLoader* loader = [DownLoader new];
    [loader downLoadWithURL:@""
              callBackBlock:^(NSArray* data){
                  NSLog(@"getBackData!");
              }];
}
@end
