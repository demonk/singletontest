//
//  LibraryB0.m
//  LibraryB0
//
//  Created by SamsenLee on 2021/5/1.
//

#import <Foundation/Foundation.h>
#import "LibraryB0.h"
#import <SingletonLibrary/Singleton.h>

@implementation LibraryB0

-(NSString*)getString{
    NSLog(@"getstring from B0");
    NSString* text = [NSString stringWithFormat:@"message from B0 by %@",[Singleton instance] ];
    return text;
}

@end
