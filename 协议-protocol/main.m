//
//  main.m
//  协议-protocol
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * p = [Person new];
        [p doWork];
        [p doubleWork];
    }
    return 0;
}
