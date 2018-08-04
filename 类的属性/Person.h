/*
 类的属性
 
 1、@property 是访问成员的辅助形式
 
 2、@property 声明的同时，会生成一个成员变量和一对访问方法（setter\getter）
 ex:@property NSString* name;  会做以下事：
 
 声明一个private成员变量，一定是这个变量名
 NSString* _name;
 
 声明并定义一个set方法
 -(void) setName:(NSString*)name{ _name = name;}
 
 声明并定义一个get方法
 -(NSString*)name{retun _name;}
 
 3、修改自动生成的成员变量名
 在.m中，@synthesize name = _myName;
 这样就不会生成_name,或这个属性与_name无关
 
 4、修改自动生成的set\get方法名
 @property (setter=setMyHight:,getter=getMyHight) CGFloat hight;
 
 5、重写自动生成的set\get方法
 不需要声明，直接在.m中重写以下两个方法的定义
 -(void)setName:(NSString*)name{ _myName = name;}
 -(NSString*)name{ retun _myName;}
 
 5、属性的关键字
 一、赋值相关，
 assign 默认，非对象类型，可以不写
 retain 对象类型
 copy   NSString
 strong NSString/对象类型
 weak
 二、线程相关
 nonatomic 默认，线程不安全 性能高 常用
 atomic 线程安全 （不建议在这里处理线程安全问题）
 三、读写权
 readwrite 默认
 readonly
 四、方法名相关,不常用
 setter = setFuncName:
 getter = getFuncName
 */
#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong,nonatomic) NSString* name;
@property NSInteger age;//=> @property(assign,nonatomic,readwrite)NSInteger
@property (setter = setMyHight:,getter = getMyHight) CGFloat hight;
@end
