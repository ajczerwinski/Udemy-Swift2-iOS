//
//  Person.h
//  Properties
//
//  Created by Allen Czerwinski on 4/25/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    BOOL isInsecure;
}

@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;

@end
