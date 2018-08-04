//
//  Person.h
//  序列化-反序列化
//
//  Created by 张智 on 2018/7/28.
//  Copyright © 2018年 gvitech. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum SexType{boy=0,girl=1}Sex;

@interface Person : NSObject<NSCoding>

@property (strong,nonatomic)NSString* name;
@property (assign,nonatomic)NSUInteger age;
@property (assign,nonatomic)Sex* sex;

-(instancetype)initWithName:(NSString*)name age:(NSUInteger)age sex:(Sex*)sex;
// NSCoding
- (void)encodeWithCoder:(NSCoder *)aCoder;
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder; // NS_DESIGNATED_INITIALIZER

@end
