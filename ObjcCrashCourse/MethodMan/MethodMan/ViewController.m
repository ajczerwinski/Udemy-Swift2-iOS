//
//  ViewController.m
//  MethodMan
//
//  Created by Allen Czerwinski on 4/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
}

- (BOOL)canPurchase:(double)amount {
    
    if (self.bankAccount >= amount)
        return YES;
    
    return NO;
    
}

// You can create a function with named arguments like below (common ObjC convention):
- (void)declareWinnerWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {

    if (scoreA > scoreB)
        NSLog(@"Player A Wins!");
    else if (scoreB > scoreA)
        NSLog(@"Player B Wins!");
    else
        NSLog(@"The game is at a standstill!");
}

// Can also create functions with unnamed arguments, but we don't want to because it's
// confusing to other developers (or yourself later):
//- (void)declareWinner:(NSInteger)score :(NSInteger)score

- (void)myPlayground {
    
    if ([self canPurchase:self.itemAmount]) {
        NSLog(@"We can buy!");
    }
    
    // This references the function above with named arguments
    
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    // This references the commented out function above without named aruments
    // It's important to use named arguments to make code readable, otherwise you won't know
    // what parameters the function is expecting
//    [self declareWinner:55 :66];
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    // Creating an image from a url string embedded in NSData embedded in UIImage (this is good practice)
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    // Alternative
    NSString *urlString = @"http://google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *altImage = [UIImage imageWithData:data];
    
    NSNumber *number = [NSNumber numberWithInt:55];
    // Use dot syntax to access properties
    NSLog(@"Number: %@", number.stringValue);
    // Use function calls to access functions (and not properties)
    NSLog(@"Number: %@", [number stringValue]);
}

@end
