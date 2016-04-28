//
//  ViewController.m
//  TapperExercise
//
//  Created by Allen Czerwinski on 4/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int maxTaps;
    int currentTaps;
}

@property (weak, nonatomic) IBOutlet UIImageView *logoImg;
@property (weak, nonatomic) IBOutlet UITextField *howManyTapsTxt;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;

@property (weak, nonatomic) IBOutlet UIButton *tapBtn;
@property (weak, nonatomic) IBOutlet UILabel *tapsLbl;


- (IBAction)onCoinTapped:(id)sender;

- (IBAction)onPlayBtnPressed:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    maxTaps = 0;
    currentTaps = 0;
    
    self.tapBtn.hidden = YES;
    self.tapsLbl.hidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCoinTapped:(id)sender {
    
    currentTaps++;
    if (currentTaps < maxTaps) {
        self.tapsLbl.text = [NSString stringWithFormat:@"%d Taps",currentTaps];
    } else {
        [self gameOver];
    }
    
}

- (IBAction)onPlayBtnPressed:(id)sender {
    
    if (![self.howManyTapsTxt.text isEqualToString:@""]) {
        
        maxTaps = [self.howManyTapsTxt.text intValue];
        if (maxTaps) {
            [self playGame];
        } else {
            [self showAlert:@"Number Required" alertMessage:@"Please enter a number to continue"];
            
            self.howManyTapsTxt.text = @"";
            [self reloadInputViews];
        }
    } else {
        [self showAlert:@"No Value Entered" alertMessage:@"Please enter a number of taps to win!"];
    }
    
}

- (void)startGame {
    
    self.playBtn.hidden = NO;
    self.logoImg.hidden = NO;
    self.howManyTapsTxt.hidden = NO;
    self.howManyTapsTxt.text = @"";
    self.tapBtn.hidden = YES;
    self.tapsLbl.text = @"";
    self.tapsLbl.hidden = YES;
    
    maxTaps = 0;
    currentTaps = 0;
    
}

- (void)playGame {
    self.playBtn.hidden = YES;
    self.logoImg.hidden = YES;
    self.howManyTapsTxt.hidden = YES;
    self.tapBtn.hidden = NO;
    self.tapsLbl.hidden = NO;
    self.tapsLbl.text = @"0 Taps";
}

- (void)gameOver {
    self.playBtn.hidden = YES;
    self.logoImg.hidden = YES;
    self.howManyTapsTxt.hidden = YES;
    self.tapBtn.hidden = YES;
    self.howManyTapsTxt.hidden = YES;
    self.howManyTapsTxt.text = @"";
    
    [self showAlert:@"You Win!" alertMessage:@"Game over, click ok to restart"];
}

- (void)showAlert:(NSString*)alertTitle alertMessage:(NSString*)alertMessage {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertController *okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
                                   {
                                       [self startGame];
                                   }];
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
