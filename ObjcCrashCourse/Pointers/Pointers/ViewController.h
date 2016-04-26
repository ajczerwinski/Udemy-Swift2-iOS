//
//  ViewController.h
//  Pointers
//
//  Created by Allen Czerwinski on 4/26/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// name has a pointer (asterisk)
// any type of objects (class Objects) we will use a pointer
@property (nonatomic,strong) NSString *name;

// age does not because it is a native type (int)
@property (nonatomic) int age;

// debt also does not because NSInteger is just an alias for native type int
@property (nonatomic) NSInteger debt;

// bankBalance DOES because NSNumber is a class
@property (nonatomic) NSNumber *bankBalance;


@end

