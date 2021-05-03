//
//  LibraryA1.m
//  LibraryA1
//
//  Created by SamsenLee on 2021/5/1.
//

#import <Foundation/Foundation.h>
#import "LibraryA1.h"
#import <SingletonLibrary/Singleton.h>

@implementation LibraryA1

-(NSString*)getString{
    NSLog(@"getstring from A1");
    NSString* text = [NSString stringWithFormat:@"message from A1 by %@",[Singleton instance] ];
    return text;
}

@end
