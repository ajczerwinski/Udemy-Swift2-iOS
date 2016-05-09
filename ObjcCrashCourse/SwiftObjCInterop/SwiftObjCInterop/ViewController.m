//
//  ViewController.m
//  SwiftObjCInterop
//
//  Created by Allen Czerwinski on 5/8/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"
#import "SwiftObjCInterop-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) SecondVC *secondVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)loadSecondVC:(id)sender {
    _secondVC = [[SecondVC alloc]init];
    _secondVC.view.backgroundColor = [UIColor blueColor];
    [self presentViewController: _secondVC animated: YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
