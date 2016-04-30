//
//  ViewController.m
//  Dictionary
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
    
    NSNumber *age1 = [NSNumber numberWithInt:40];
    NSNumber *age2 = [NSNumber numberWithInt:35];
    
    // Literal syntax
    // NOTE: While ObjC allows you to mix data types in a dictionary (e.g. str and int), it can
    // cause crashes, and so should be avoided unless absolutely necessary
    NSDictionary *dict = @{@"Jack": age1, @"John": age2};
    NSDictionary *dict2 = [[NSDictionary alloc]init];
    
    int jacksAge = [[dict objectForKey:@"Jack"] intValue];
    NSLog(@"Jack's age: %d", jacksAge);
    
    // Can also be written like this:
    NSNumber *age3 = [dict objectForKey:@"Jack"];
    int jacksAge2 = [age3 intValue];
    
    // If you want to use literal syntax to create a mutable dictionary, you need to use mutableCopy:
    NSMutableDictionary *mutDict = [@{@"1": @"Lame BMW", @"2": @"Crappy Volvo", @"3": @"Sweet Honda Civic"} mutableCopy];
    
    // Typically will want to do it this way though:
    NSMutableDictionary *mutDict2 = [[NSMutableDictionary alloc]init];
    [mutDict2 setObject:@"An Object" forKey:@"A Key"];
    [mutDict2 setObject:[NSNumber numberWithDouble:20.0000] forKey:@"doubleTrouble"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
