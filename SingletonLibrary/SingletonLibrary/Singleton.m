//
//  Singleton.m
//  SingletonTest
//
//  Created by SamsenLee on 2021/5/1.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

@implementation Singleton

static Singleton*instance = nil;
+ (instancetype)instance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[Singleton alloc] init];
    });
    NSLog(@"invoke from %@",[NSThread callStackSymbols].firstObject);
    return instance;
}

-(instancetype)init{
    if (self = [super init]) {
//        NSLog(@"singleton test init: %@",self);
    }
    return self;
}
@end
