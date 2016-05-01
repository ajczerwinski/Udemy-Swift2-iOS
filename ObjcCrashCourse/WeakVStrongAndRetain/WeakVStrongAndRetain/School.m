//
//  School.m
//  WeakVStrongAndRetain
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "School.h"
#import "Person.h"

@implementation School

-(void)initData {
    self.student = [[Person alloc]init];
    [self.student initData];
    
    // Then our hypothetical student pulls a prank and gets kicked out of school
    self.student = nil;
    // Even though the student has been removed from memory here, it is still stuck in memory because
    // of the reference to it in Person.m (self.backpack.owner = self;)
    // to fix this, give the Backpack a weak reference to the Person
}

@end
