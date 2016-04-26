//
//  ViewController.m
//  SuperCoolExercise
//
//  Created by Allen Czerwinski on 4/26/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *coolBackground;
@property (weak, nonatomic) IBOutlet UIImageView *coolLogo;
@property (weak, nonatomic) IBOutlet UIButton *buttonUI;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _coolLogo.hidden = TRUE;
    _coolBackground.hidden = TRUE;
    _buttonUI.hidden = FALSE;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeMeNotSoUncool:(id)sender {
    _coolBackground.hidden = FALSE;
    _coolLogo.hidden = FALSE;
    _buttonUI.hidden = TRUE;
}




@end
