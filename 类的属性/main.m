//
//  main.m
//  类的属性
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* p = [Person new];
        p.name = @"sst";
        
        p.age = 4;
        long t = p.age;
        
        [p setMyHight:44.3];
        NSLog(@"%f",p.getMyHight);
    }
    return 0;
}
