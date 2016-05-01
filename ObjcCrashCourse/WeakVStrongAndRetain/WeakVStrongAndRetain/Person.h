//
//  Person.h
//  WeakVStrongAndRetain
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Backpack;

@interface Person : NSObject
@property (nonatomic, strong) Backpack *backpack;
-(void)initData;
@end
