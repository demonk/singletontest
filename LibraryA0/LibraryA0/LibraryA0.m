//
//  LibraryA0.m
//  LibraryA0
//
//  Created by SamsenLee on 2021/5/1.
//

#import <Foundation/Foundation.h>
#import "LibraryA0.h"
#import <SingletonLibrary/Singleton.h>

@implementation LibraryA0

-(NSString*)getString{
    NSLog(@"getstring from A0");
    NSString* text = [NSString stringWithFormat:@"message from A0 by %@",[Singleton instance] ];
    return text;
}

@end
