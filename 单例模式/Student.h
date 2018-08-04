//
//  Student.h
//  单例模式
//
//  Created by 张智 on 2018/7/29.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
+(instancetype)getInstance:(NSInteger)index;
@end
