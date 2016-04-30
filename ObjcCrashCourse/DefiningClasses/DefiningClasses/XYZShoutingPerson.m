//
//  XYZShoutingPerson.m
//  DefiningClasses
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson
-(void)sayHello:(NSString *)greeting {
    NSString *uppercaseGreeting = [greeting uppercaseString];
    [super sayHello:uppercaseGreeting];
}
@end
