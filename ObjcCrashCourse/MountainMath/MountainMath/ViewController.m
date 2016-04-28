//
//  ViewController.m
//  MountainMath
//
//  Created by Allen Czerwinski on 4/27/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int imAnInt = 5;
    float iAmAFloat = 3.3;
    double iAmTheDouble = 5.6666668;
    
    NSLog(@"Int: %d", imAnInt);
    NSLog(@"Float: %f", iAmAFloat);
    NSLog(@"Double: %f", iAmTheDouble);
    
    // This won't work because ObjC only understands number objects
//    NSArray *arr = @[imAnInt,iAmAFloat,iAmTheDouble];
    
    // This will work
    NSNumber *numInt1 = [NSNumber numberWithInt:5];
    NSNumber *numInt2 = [NSNumber numberWithInt:100];
    
    int val1 = numInt1.intValue;
    int val2 = numInt2.intValue;
    
    int sum = val1 + val2;
    
    NSLog(@"Sum: %d",sum);
    
    // But in order to save the sum, we will need to store it as an NSNumber
    NSNumber *numSum = [NSNumber numberWithInt:sum];
    
    NSLog(@"Number Object: %@",numSum);
    
    NSArray *arr = @[numInt1, numInt2, numSum];
    
    NSString *str = numSum.stringValue;
    
    NSString *anotherWayToDoStr = [numSum stringValue];
    
    // Recommended to use NSInteger because it is safe when we don't know
    NSInteger someInt = 55;
    
    NSNumber *prodNum1 = [NSNumber numberWithInt: [numInt1 intValue] * [numInt2 intValue]];

    NSLog(@"Product: %@",prodNum1);
    
    // Also can do this way using dot syntax
    NSNumber *prodNum2 = [NSNumber numberWithInt:(numInt1.intValue * numInt2.intValue)];
    
    NSLog(@"(alternate way of writing) Product: %@",prodNum2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
