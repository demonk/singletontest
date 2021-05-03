//
//  ViewController.m
//  SingletonTest
//
//  Created by SamsenLee on 2021/5/1.
//

#import "ViewController.h"
#import <LibraryA0/LibraryA0.h>
#import <LibraryA1/LibraryA1.h>
#import <SingletonLibrary/Singleton.h>
#import <LibraryB0/LibraryB0.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextView* textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 100, 600, 300)];
    [self.view addSubview:textView];
    
    [textView setTextColor:[UIColor blackColor]];
    
    LibraryA0* a0=[[LibraryA0 alloc]init];
    LibraryA1* a1=[[LibraryA1 alloc]init];
    LibraryB0* b0=[[LibraryB0 alloc]init];

    NSString* showText=[NSString stringWithFormat:@"\nA0=%@\nA1=%@\nB0=%@\nIN=message from IN by %@",[a0 getString],[a1 getString],[b0 getString],[Singleton instance]];
    NSLog(@"%@",showText);
    [textView setText:showText];
}


@end
