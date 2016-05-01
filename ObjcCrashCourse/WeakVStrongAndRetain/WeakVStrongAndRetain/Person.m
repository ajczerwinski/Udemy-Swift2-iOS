//
//  Person.m
//  WeakVStrongAndRetain
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Person.h"
#import "Backpack.h"

@implementation Person

// Here, the Person is holding reference to the Backpack, and the
// Backpack is holding reference to the Person. Two strong references
// holding reference is called a Retain Cycle
// NEVER want to have two strong objects pointing to each other
// either in ObjC or Swift. This would prevent the Object from
// disappearing in memory, causing a Memory Leak
// The solution is to make one of the references weak, typically the
// "least important" one. In this case, the Backpack
-(void)initData {
    self.backpack = [[Backpack alloc]init];
    self.backpack.owner = self;
}

@end
