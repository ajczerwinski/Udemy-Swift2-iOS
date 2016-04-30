//
//  XYZPerson.m
//  DefiningClasses
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson
- (void)sayHello:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

-(void)whereFrom {
    NSLog(@"Where are you from?");
}
-(void)introduceSelf {
    NSLog(@"I am from Montana");
}
-(void)sayGoodbye {
    NSLog(@"Well...goodbye");
}

+(id)person {
    return [[self alloc]init];
}

@end
