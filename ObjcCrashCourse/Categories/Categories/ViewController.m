//
//  ViewController.m
//  Categories
//
//  Created by Allen Czerwinski on 5/5/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"
#import "Honda.h"
#import "Honda+SupedUp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Honda *honda = [[Honda alloc]init];
    [honda addUglySpoiler];
    [honda addGoldPlasticSpinnerRims];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
