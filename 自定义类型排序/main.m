//
//  main.m
//  自定义类型排序
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
/*
 自定义类型实例集合的自定义排序方法
 1、类要为自己定义比较方法
 2、把比较方法当参数传给集合
 
 */

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray* arr = [[NSMutableArray alloc]init];
        [arr addObject:[[Student alloc]initWithName:@"batu" age:32 sex:boy]];
        [arr addObject:[[Student alloc]initWithName:@"lily" age:21 sex:girl]];
        [arr addObject:[[Student alloc]initWithName:@"tony" age:45 sex:boy]];
        [arr addObject:[[Student alloc]initWithName:@"sasa" age:12 sex:girl]];
        
#pragma mark 自定义方法
        // 把类的比较方法转成SEL
        //按名字排序
        SEL sortName = @selector(compareName:);
        //按年龄排序
        SEL sortAge = @selector(compareAge:);
        //按性别排序
        SEL sortSex = @selector(compareSex:);
        
        //按需要进行排序
        //[arr sortUsingSelector:sortName];
        
        
#pragma mark 框架方法
        //或直接使用框架的描述器 NSSortDescriptor
        //第一个参数是要进行比较的属性，第二个参数是否使用升序，从小到大
        NSSortDescriptor* descName = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
        
        NSSortDescriptor* descAge = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
        
        NSSortDescriptor* descSex = [NSSortDescriptor sortDescriptorWithKey:@"sex" ascending:YES];
        
        //多条件排序，输入一个描述器的数组
        //当第一个结果相同时采用第二个条件排序，结果仍然相同时采用第三个条件排序
        [arr sortUsingDescriptors:@[descName,descAge,descSex]];
        
        NSLog(@"%@",arr);
    }
    return 0;
}
