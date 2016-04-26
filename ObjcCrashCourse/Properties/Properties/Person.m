//
//  Person.m
//  Properties
//
//  Created by Allen Czerwinski on 4/25/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)test {
    // a property creates a 1. Getter, 2. Setter, 3. Instance Variable (ivar) under the hood
    // access ivars with the underscore '_'
    // set firstName using self.
    self.firstName = @"Bob";
    
    // set firstName using _ that gets the firstName variable under the hood
    _firstName = @"Jack";
    
    isInsecure = YES;

    [self setLastName:@"Davis"];

    // getter is created for us automatically
    NSString *name = [self firstName];
}

@end
