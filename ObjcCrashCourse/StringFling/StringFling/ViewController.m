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

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
