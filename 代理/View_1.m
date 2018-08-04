//
//  View_1.m
//  代理
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "View_1.h"
#import "DownLoader.h"

@implementation View_1
-(void)showMe{
    //创建一个功能模块
    DownLoader* dl = [DownLoader new];
    //把自己塞给模块，供其调用协议函数
    dl.master = self;
    //调用功能
    [dl downLoadFromURL:@""];
}
-(void)finishDownload:(NSString *)msg{
    NSLog(@"showMe:%@",msg);
}
@end
