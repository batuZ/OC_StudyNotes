//
//  DownLoader.m
//  代理
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "DownLoader.h"

@implementation DownLoader 
-(void)downLoadFromURL:(NSString*)url
{
    NSLog(@"开始下载....");
    
    //调东家实现的协议函数，并回传参数
    //这里实现子级调上一级方法和向上级传值
    [self.master finishDownload:@"下载的东西"];
}
@end
