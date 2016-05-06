//
//  Honda.h
//  Categories
//
//  Created by Allen Czerwinski on 5/5/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Honda : NSObject

@property(nonatomic,strong) NSString *model;
@property(nonatomic,strong) NSNumber *miles;
-(void)increaseMilesToOdometer;
-(void)drive;

@end
