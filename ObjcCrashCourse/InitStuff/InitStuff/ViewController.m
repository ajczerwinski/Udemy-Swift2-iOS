//
//  ViewController.m
//  InitStuff
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person = [[Person alloc]init];
    // The 'new' keywoard will allocate and initialize all in the same call
    // It will only call the defaut initialization though. You can't designated initializers
    Person *person2 = [Person new];
    
    // the 'new' keyword works Objective-C classes:
    NSString *str = [NSString new];
    
    [person printName];
    
    Person *person3 = [[Person alloc]initWithFirstName:@"Petey" lastName:@"McFreedy"];
    
    [person3 printName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
