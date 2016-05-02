//
//  DataService.h
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Post.h"

@interface DataService : NSObject

@property (nonatomic, strong) NSMutableArray *loadedPosts;
extern NSString * const KEY_POSTS;

+(id)sharedInstance;
-(NSString *)saveImageAndCreatePath:(UIImage*)image;
-(void)savePosts;
-(void)loadPosts;
-(UIImage *)imageForPath:(NSString *)path;
-(void)addPost:(Post *)post;
-(NSString *)documentsPathForFileName:(NSString *)name;

@end
