//
//  ViewController.h
//  WeakVStrongAndRetain
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// strong means that the object will never be nil unless we set it to that specifically
// you want to hold a strong reference to that variable or property
// use strong on Objects
@property (nonatomic, strong) NSString *name;

// can't use strong on non-objects. The statement below wouldn't work for example:
//@property (nonatomic, strong) int age;
// by default, it would be assign (value types are assign by default):
//@property (nonatomic, assign) int age; but you don't actually have to type assign, thus:
@property (nonatomic) int age;

@end

