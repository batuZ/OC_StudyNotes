//
//  main.m
//  序列化-反序列化
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
/*
 
 需要序列化的对象需要实现 <NSCoding> 协议
 并对类成员一一定义序列化反序列化方式
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Person* p1 = [[Person alloc]initWithName:@"batu" age:32 sex:boy];
        Person* p2 = [[Person alloc]initWithName:@"lily" age:21 sex:girl];
        Person* p3 = [[Person alloc]initWithName:@"tony" age:45 sex:boy];
        Person* p4 = [[Person alloc]initWithName:@"sasa" age:12 sex:girl];
        
        //序列化,先把自定义对象转为NSData
        NSData* d1 = [NSKeyedArchiver archivedDataWithRootObject:p1];
        NSData* d2 = [NSKeyedArchiver archivedDataWithRootObject:p2];
        NSData* d3 = [NSKeyedArchiver archivedDataWithRootObject:p3];
        NSData* d4 = [NSKeyedArchiver archivedDataWithRootObject:p4];
        NSMutableArray* nsDataArr = [NSMutableArray  arrayWithObjects:d1,d2,d3,d4, nil];
        //atomically yes:在内存整理好后一起写进磁盘，安全，但费内存，适合少量写入
        // no : 直写磁盘
        NSString* filePath = @"/Users/Batu/MyData/OC/OC_StudyNotes/序列化-反序列化/mylist.plist";
       
       // [nsDataArr writeToFile:filePath atomically:YES];
        
        //反序列化
        nsDataArr = [NSMutableArray arrayWithContentsOfFile:filePath];
      Person*  p_1 = [NSKeyedUnarchiver unarchiveObjectWithData:nsDataArr[0]];
      Person*  p_2 = [NSKeyedUnarchiver unarchiveObjectWithData:nsDataArr[1]];
      Person*  p_3 = [NSKeyedUnarchiver unarchiveObjectWithData:nsDataArr[2]];
      Person*  p_4 = [NSKeyedUnarchiver unarchiveObjectWithData:nsDataArr[3]];

        NSLog(@"Hello, World!");
    }
    return 0;
}
