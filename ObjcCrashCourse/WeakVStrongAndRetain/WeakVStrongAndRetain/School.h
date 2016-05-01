//
//  School.h
//  WeakVStrongAndRetain
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@interface School : NSObject
@property (nonatomic, strong) Person *student;
@end
