//
//  DownLoader.m
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import "DownLoader.h"

@implementation DownLoader
-(void)downLoadWithURL:(NSString*)url
         callBackBlock:(void(^)(NSArray*))callBack{
    //开始下载，获取数据
    NSLog(@"Begin downLoad from %@",url);
    NSArray* arr;
    
    //完成下载，调用块（回调函数）,数据当作参数传回给主调函数
    callBack(arr);
}
@end
