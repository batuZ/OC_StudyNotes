/*/
//  main.m
//  OC_StudyNotes
//
//  Created by 张智 on 2018/7/26.
//  Copyright © 2018年 gvitech. All rights reserved.
/*/
/*
 关于Xcode
 
 1、运行app: Command + R；
 2、清除工程: Command + Shift + K；
 3、构建应用程序: Command + B；
 4、profile：command+i
 5、command+. 停止运行
 6、断点调试F6单步调试、F7跳入，F8继续
 7、command + / 注释光标所在行
 8、command + control + ↑ 切换当前类的.h/.m文件
 9、自动排版 Command + A , control + I
 10、#pragma mark 文档内标记代码
 11、折叠代码 option + command + left
 12、折叠所有方法 shift + option + command + left
 13、折叠所有/* *///注释 shift + control + command + left
/*
 左缩进 command+[
 右缩进 command+]
 
 Command + Shift + F 目录搜索
 Command + F: 文档内搜索
 Command + G: 搜索下一处
 Shift + Command + G: 搜索上一处
 
 command + I 工具选项,可以查看app 性能
 
 command + K 清除控制台打印
 command + L 输入行号,定位到行号所在行
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
