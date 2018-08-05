//
//  main.m
//  日期时间类
//
//  Created by 张智 on 2018/8/5.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //获取当前时间
        NSDate* now = [NSDate date];
        NSLog(@"当前时间：%@",now);
        
        //当前时间加一个时间段，得到一个新的时间对象，单位是秒
        NSDate* newTime = [now dateByAddingTimeInterval:8*60*60];
        NSLog(@"当前时间：%@",newTime);
        
        //两个时间点的时间差，单位是秒
        NSTimeInterval time1 = [newTime timeIntervalSinceDate:now];
        NSLog(@"%g",time1);
        
        //时间的最小值，很久以前
        NSDate* minDate = [NSDate distantPast];
        //时间的最大值，很久以后
        NSDate* maxDate = [NSDate distantFuture];
        
        //格式化时间
        NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
        [fmt setDateFormat:@"YYYY-MM-DD-HH-mm-ss"];
        /*
         Y y    年
         M      月
         D d    日
         H      24小时
         h      12小时
         m      分
         s      秒
         */
        //应用时间格式
        NSString* fmtTime = [fmt stringFromDate:newTime];
        NSLog(@"%@",fmtTime);
        
        //计时器，NSTimer
        //初始化一个定时器，并启动
        //TimeInterval:1 时间间隔
        //target:self selector:@selector(aaaa) 被触发的方法和所有者
        //userInfo:nil 传入被出发的方法的参数
        //repeats:NO 是否重复触发，如闹钟，只需触发一次
        //NSTimer* timer_1 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(aaaa) userInfo:nil repeats:NO];
        
        //block:nil 传入一个块供timer触发
        //NSTimer* timer_2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:NO block:nil];
        
        //NSTimer* timer_3 = NSTimer scheduledTimerWithTimeInterval:1 invocation:nil repeats:NO];
    }
    return 0;
}
