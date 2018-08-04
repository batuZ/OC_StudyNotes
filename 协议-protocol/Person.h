//
//  Person.h
//  协议-protocol
//
//  Created by 张智 on 2018/7/30.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "workerDelegate.h"

@interface Person : NSObject <workerDelegate>

@property (strong,nonatomic) id <workerDelegate> per;

@end
