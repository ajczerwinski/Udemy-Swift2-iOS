//
//  Person.m
//  MethodMan
//
//  Created by Allen Czerwinski on 4/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Person.h"

@implementation Person
// Class function
- (void)speakName {
    NSLog(@"My name is Jack Davis and I think I'm really cool!");
}

// Static function
+ (void)stateSpecies {
    NSLog(@"I am a human!");
}
@end
