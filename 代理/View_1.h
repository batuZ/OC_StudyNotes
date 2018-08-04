//
//  View_1.h
//  代理
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
/*

 使用功能模块
 1、要先遵守其制定的协议
 2、实现协议中的方法
 3、把自己塞进模块的代理master中
 4、调用模块函数
 */

#import <Foundation/Foundation.h>
#import "DownLoader.h"

@interface View_1 : NSObject <downloadDelegate>
-(void)showMe;
@end
