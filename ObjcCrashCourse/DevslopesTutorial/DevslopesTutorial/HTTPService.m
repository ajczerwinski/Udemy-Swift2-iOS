//
//  HTTPService.m
//  DevslopesTutorial
//
//  Created by Allen Czerwinski on 5/9/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService


// ObjC Singleton
+ (id) instance {
    
    static HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc]init];
        }
    }
    
    return sharedInstance;
    
}

@end
