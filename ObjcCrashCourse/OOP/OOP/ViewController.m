//
//  ViewController.m
//  OOP
//
//  Created by Allen Czerwinski on 4/29/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"
#import "Civic.h"

@interface ViewController ()
@property(nonatomic,strong) NSString *iAmPrivate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Civic *civic = [[Civic alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
