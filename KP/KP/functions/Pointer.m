//
//  Pointer.m
//  KP
//
//  Created by everyu on 2018/4/24.
//  Copyright © 2018年 everyu. All rights reserved.
//

#import "Pointer.h"

@interface ClassA : NSObject
@property (nonatomic, strong) NSString *desc;

+ (ClassA *)anObjectA;
@end

@implementation ClassA

+ (ClassA *)anObjectA
{
    ClassA *obj = [[ClassA alloc] init];
    obj.desc = @"123";
    return obj;
}

- (NSString *)description
{
    return self.desc;
}
@end

@implementation Pointer

+ (void)runFunction
{
    int a = 5;
    
    [self fun1:&a];

    NSLog(@"%p",&a); //0x7ffee085ac7c 存放a的指针
    NSLog(@"%d",a);
    
    
    ClassA *obj = nil;
    [self objFun:&obj];
    NSLog(@"%@",obj);
}

+ (void)fun1:(int *)p
{
    NSLog(@"%p",&p); //0x7ffee085ac48 存放指针a的地址
    *p = 10;
}

+ (void)objFun:(ClassA **)a
{
    *a = [ClassA anObjectA];
    
}
@end
