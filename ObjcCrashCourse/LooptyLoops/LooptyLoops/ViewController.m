//
//  ViewController.m
//  LooptyLoops
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
    
    NSArray *cars = @[@"Bimmer", @"Maserati", @"Bronco II"];
    NSArray *fish = @[@"Salmon", @"Pike", @"Bass", @"Perch", @"Walleye", @"Sucker"];
    
    // Classic C-style for loop
    for (int x = 0; x < cars.count; x++) {
        NSString *car = [cars objectAtIndex:x];
        NSLog(@"Car: %@", car);
    }
    
    // Fast enumeration
    for (NSString *species in fish) {
        NSLog(@"Species: %@", species);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
