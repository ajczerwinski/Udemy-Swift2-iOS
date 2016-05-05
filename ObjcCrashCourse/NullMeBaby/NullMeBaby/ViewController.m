//
//  ViewController.m
//  NullMeBaby
//
//  Created by Allen Czerwinski on 5/5/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// We use _Nonnull if we want to declare that we don't want null values
//-(void)updateName:(NSString* _Nonnull)name {

// If we want to allow for null values, we use _Nullable:
// This is analogous to Optionals in Swift
-(void)updateName:(NSString* _Nullable)name {
    
}

-(int)sum:(nonnull NSNumber*)numA :(nonnull NSNumber*)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

-(void)idiot:(NSString* _Nonnull)grr {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *num1 = nil;
    NSNumber *num2 = nil;
    
    int sum = [self sum:num1 :num2];
    
    [self updateName:nil];
    // This can cause problems because if you don't use the if statement, the int sum evaluates to 0
    // But it's actually null, and if you include the if statement, the program knows it's null
//    if (num1 &&  num2) {
//        int sum = [self sum:num1 :num2];
//        NSLog(@"Sum: %d", sum);
//    } else {
//        NSLog(@"These are null!");
//    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
