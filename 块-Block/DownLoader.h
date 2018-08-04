//
//  DownLoader.h
//  块-Block
//
//  Created by 张智 on 2018/7/31.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownLoader : NSObject

-(void)downLoadWithURL:(NSString*)url
         callBackBlock:(void(^)(NSArray*))callBack;
@end
