//
//  main.m
//  DefiningClasses
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "XYZPerson.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    XYZPerson *allen = [[XYZPerson alloc]init];
//    [allen sayHello];
    [allen whereFrom];
    [allen introduceSelf];
    [allen sayGoodbye];
}


