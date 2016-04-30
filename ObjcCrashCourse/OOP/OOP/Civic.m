//
//  Civic.m
//  OOP
//
//  Created by Allen Czerwinski on 4/29/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Civic.h"

@implementation Civic

-(id)init {
    if (self = [super init]) {
        
    }
    [self drive];
    return self;
}

- (void)test {
    self.make = @"Honda";
    self.model = @"Civic";
    [self drive];
}

-(void)drive {
    NSLog(@"Drive from subclass");
    
    [super drive];
}

@end
