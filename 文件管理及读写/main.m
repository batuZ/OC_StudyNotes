//
//  main.m
//  文件管理及读写
//
//  Created by 张智 on 2018/7/29.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark 文件管理
        //动态加载本地文件
        NSString* filePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"plist"];
        NSString* newPath = @"";
        
        //文件管理的单例对象
        NSFileManager* fm = [NSFileManager defaultManager];
        
        //遍历文件夹，不包括子文件夹，浅度遍历
        NSArray<NSString*>* res =  [fm contentsOfDirectoryAtPath:filePath error:nil];
        
        //遍历文件夹，包括子文件夹，深度遍历
        res =[fm subpathsOfDirectoryAtPath:filePath error:nil];
        
        //判断文件是否存在
        BOOL isEx = [fm fileExistsAtPath:filePath];
        
        //创建文件，路径，要写入的内容（可空），文件属性的字典（可空）
        NSData* testData = [NSData dataWithBytes:@"batusss" length:20];
        BOOL isCreated = [fm createFileAtPath:filePath contents:testData attributes:nil];
        
        //创建文件夹,路径，是否替换已有文件夹，文件属性字典，返回错误信息
        isCreated = [fm createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:nil];
        
        //移动文件，或用来重名命文件
        BOOL isMove = [fm moveItemAtPath:filePath toPath:newPath error:nil];
        
        //复制文件/文件夹
        BOOL isCopy = [fm copyItemAtPath:filePath toPath:newPath error:nil];
        
        //移除文件/文件夹
        BOOL isRemove = [fm removeItemAtPath:filePath error:nil];
        
        //获取文件属性
        NSDictionary<NSFileAttributeKey, id>* attrs =
        [fm attributesOfItemAtPath:filePath error:nil];
        
#pragma mark- 操作文件
        //只读
        NSFileHandle* fh = [NSFileHandle fileHandleForReadingAtPath:filePath];
        //只写
        fh = [NSFileHandle fileHandleForWritingAtPath:filePath];
        //读写
        fh = [NSFileHandle fileHandleForUpdatingAtPath:filePath];
        
        //从当前位置向后读长度为10的内容
        NSData* data = [fh readDataOfLength:10];
        //从当前位置读到文件尾
        data = [fh readDataToEndOfFile];
        //设置当前位置
        [fh seekToFileOffset:88];
        //当前位置设置到文件尾
        [fh seekToEndOfFile];
        //写文件
        [fh writeData:[NSData dataWithBytes:@"haha" length:5]];
        //读文件
        data = [fh readDataOfLength:6];
        NSString* str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    }
    return 0;
}
