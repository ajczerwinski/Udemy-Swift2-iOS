//
//  XYZPerson.h
//  DefiningClasses
//
//  Created by Allen Czerwinski on 4/30/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject
@property (copy) NSString *firstName;
@property (copy) NSString *lastName;
@property NSDate *dateOfBirth;
-(void)sayHello;
+(id)person;
@end
