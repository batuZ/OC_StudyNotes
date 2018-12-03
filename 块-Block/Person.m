//
//  Person.m
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "Person.h"
#import "DownLoader.h"


#pragma - mark block的定义方法
void def_Blocks(){
    // 完整形式
    // return_type (^blockName)(var_type,...) = ^return_type (var_type varName,...) { // ... };
    
    //无参无返, 类型：void(^)void  块名：block1
    void(^block1)(void) = ^void(void){};
    void(^block1_1)(void) = ^{};
    
    //有参无返, 类型：void(^)(NSString*)  块名：block1
    void(^block2)(NSString*) = ^void(NSString* s){};
    void(^block2_1)(NSString*) = ^(NSString* s){};
    
    //有返无参
    NSString*(^getString)(void) = ^NSString*(void){return @"var";};
    NSString*(^getString_1)(void) = ^{return @"var";};
    
    //有参有返, 类型：int(^)(int,int)  块名：block1
    int(^block3)(int,int) = ^int(int a,int b){return a+b;};
    int(^block3_1)(int,int)=^(int a,int b){return a+b;};
}
@implementation Person

#pragma - mark block的自调用 用于函数内递归
-(void)testFunc{
    __block int s = 5;
    __block void(^blk)(int) = [^(int r){
        if(r-- > 0){
            blk(r);
        }
        return ;
    } copy];
    blk(s);
}


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

-(void(^)(void))getBlock_1{
    return ^{};
}
@end
