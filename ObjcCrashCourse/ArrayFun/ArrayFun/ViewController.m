//
//  ViewController.m
//  ArrayFun
//
//  Created by Allen Czerwinski on 4/29/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arr = [NSArray arrayWithObjects:@"My", @"mother", @"told", @"me", @"to", @"choose", @"the", @"very", @"best", @"one", nil];
    // literal instantiation
    NSArray *arr2 = @[@"Donkey", @"Kong", @"is", @"Better", @"Than", @"Kirby"];
    
    NSLog(@"Original array: %@", arr.debugDescription);
    // You can't edit a non-mutable array, but you can replace it:
    arr = @[@"Mario", @"Luigi"];
    
    NSMutableArray *mutArr = [NSMutableArray arrayWithObjects:@"boom", @"jam", @"slam", @"wham", @"pam", nil];
    NSLog(@"MUTABLE: %@", mutArr.debugDescription);
    
    NSString *str = [arr2 objectAtIndex:3];
    
    [mutArr removeObjectAtIndex:2];
    [mutArr addObject:@"Sweeeeeet"];
    
    NSLog(@"MUT 2: %@", mutArr.debugDescription);
    NSLog(@"ARR2: %@", arr2.debugDescription);
    NSLog(@"Accessing array values: %@", str);
    NSLog(@"Edited original array: %@", arr.debugDescription);
    
    // You can also initialize an array with another array
    NSArray *arr3 = [NSArray arrayWithArray:arr];
    
    NSLog(@"Hi here is arr3, which is a copy of arr: %@", arr3);
    
    // An NSArray can also point to an NSMutableArray:
    NSArray *arr4 = mutArr;
    
    // You CAN'T point an NSMutableArray to an NSArray though (gives 'incompatible pointer types' error):
//    NSMutableArray *arr5 = arr3;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
