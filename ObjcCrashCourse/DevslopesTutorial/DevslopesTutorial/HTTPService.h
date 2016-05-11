//
//  HTTPService.h
//  DevslopesTutorial
//
//  Created by Allen Czerwinski on 5/9/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSDictionary *__nullable dataDict, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
-(void) getTutorials:(nullable onComplete)completionHandler;

@end
