//
//  Model.h
//  sqlite3
//
//  Created by 张智 on 2018/12/21.
//  Copyright © 2018 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject
@property (nonatomic,strong) NSString* name;
@property (nonatomic,assign) NSInteger* age;
@property (nonatomic,strong) NSString* sex;
@end

NS_ASSUME_NONNULL_END
