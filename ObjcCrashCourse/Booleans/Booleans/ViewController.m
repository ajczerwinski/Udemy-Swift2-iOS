//
//  ViewController.m
//  Booleans
//
//  Created by Allen Czerwinski on 4/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Always use YES and NO in ObjC, NOT true and false
    BOOL amICool = YES;
    BOOL isTheOtherPersonCool = NO;
    
    // Note that single line if expressions don't need curly braces. The following works:
    if (amICool)
        NSLog(@"Yay I'm cool!");
     else
        NSLog(@"Sad :(");
    // Just like this does:
    if (amICool) {
        NSLog(@"Yay I'm cool!");
    } else {
        NSLog(@"Sad :(");
    }
    
    NSString *name = nil;
    
    if (name) {
        NSLog(@"name: %@",name);
    } else if (100 == 100) {
        NSLog(@"Hi");
    }
    
    if (!name) {
        name = @"Sandra";
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
