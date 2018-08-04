//
//  main.m
//  单例模式
//
//  Created by 张智 on 2018/7/29.
//  Copyright © 2018年 gvitech. All rights reserved.


#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student* s1 = [Student getInstance:2];
        Student* s2 = [Student getInstance:3];
    
        NSLog(@"s1:%p",s1);
        NSLog(@"s2:%p",s2);
        
    }
    return 0;
}
