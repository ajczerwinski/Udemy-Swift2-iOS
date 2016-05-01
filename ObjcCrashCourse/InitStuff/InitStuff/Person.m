//
//  Person.m
//  InitStuff
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last {
    
    self.firstName = first;
    self.lastName = last;
    // We could put the super init here
//    self = [super init];
//    return self;
    
    // or we could create another initializer below and return it here
    return [self initWithAge:500];

}

-(id)initWithAge:(NSInteger)age {
    
    self = [super init];
    return self;
}

-(void)printName {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}

@end
