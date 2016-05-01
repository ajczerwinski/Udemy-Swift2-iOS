//
//  Person.h
//  InitStuff
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong) NSString *firstName;
@property(nonatomic, strong) NSString *lastName;

-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last;
-(void)printName;
@end
