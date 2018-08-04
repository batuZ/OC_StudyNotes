//
//  main.m
//  捕获异常
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyException.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try{
            
        }@catch(MyException *ex){
            
            NSLog(@"name:%@ exception:%@",ex.name,ex.reason)
            
        }@finally{
            
        }
    }
    return 0;
}
