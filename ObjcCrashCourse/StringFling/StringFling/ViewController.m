//
//  ViewController.m
//  StringFling
//
//  Created by Allen Czerwinski on 4/26/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *firstName = @"John";
    NSString *allocatedString = [[NSString alloc]init];
    
    NSLog(@"Name: %@",firstName);
    
    NSString *fullName = [NSString stringWithFormat:@"%@ Smith %@", firstName, @"Charles the III"];
    
    NSLog(@"Full Name: %@",fullName);
    
    NSString *display = [fullName stringByAppendingString:@" - died in 1448"];
    
    NSLog(@"%@", display);
    
    NSString *var1 = @"Junk";
    NSString *var2 = @"in the trunk";
    NSString *var3 = @"junk";
    
    // Don't compare strings this way
//    if (var1 != var2) {
//        NSLog(@"They are not the same!");
//    }
    
    // Compare strings this way instead (using the built in method)
    if ([var1 isEqualToString:var2]) {
        NSLog(@"They are the same!");
    } else {
        NSLog(@"They are not the same yo!");
    }

    if ([var1.lowercaseString isEqualToString:var3]) {
        NSLog(@"They are the same");
    } else {
        NSLog(@"They are not the same");
    }
    
    if ([var1 caseInsensitiveCompare:var3] == NSOrderedSame) {
        NSLog(@"They AREREREE the same");
    } else {
        NSLog(@"They are NOTTTT the same");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
