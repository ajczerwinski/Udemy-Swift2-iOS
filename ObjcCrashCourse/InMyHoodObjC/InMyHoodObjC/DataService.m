//
//  DataService.m
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "DataService.h"

@implementation DataService
// check out www.daveoncode.com ios and cocoa section for more info on singletons in ObjC
+(id)sharedInstance
{
    // structure used to test wehther the block has completed or not
    static dispatch_once_t p = 0;
    
    // initialize sharedObject as nil (in its first call only)
    __strong static id _sharedObject = nil;
    
    // executes a block object once and only once for the lifetime of the app
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });
    
    // returns the same object each time
    return _sharedObject;
}

-(id)init {
    if (self = [super init]) {
        _loadedPosts = [[NSMutableArray alloc]init];
        [self loadPosts];
        
    }
    return self;
}

NSString *const KEY_POSTS = @"posts";

-(NSString *)saveImageAndCreatePath:(UIImage *)image {
    
    NSData *imgData = UIImagePNGRepresentation(image);
    NSString *imgPath = [NSString stringWithFormat:@"image%f.png", NSDate.timeIntervalSinceReferenceDate];
    NSString *fullPath = [self documentsPathForFileName:imgPath];
    [imgData writeToFile:fullPath atomically:YES];
    return imgPath;
}

-(void)savePosts {
    NSData *postsData = [NSKeyedArchiver archivedDataWithRootObject:_loadedPosts];
    [[NSUserDefaults standardUserDefaults]setObject:postsData forKey:KEY_POSTS];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

-(void)loadPosts {
    
    NSData *postsData = [[NSUserDefaults standardUserDefaults]objectForKey:KEY_POSTS];
    
    if (postsData) {
        NSMutableArray<Post *> *postsArr = [NSKeyedUnarchiver unarchiveObjectWithData:postsData];
        if (postsArr) {
            _loadedPosts = postsArr;
        }
    }
    [[NSNotificationCenter defaultCenter]postNotificationName:@"postsLoaded" object:nil];
}

-(UIImage *)imageForPath:(NSString *)path {
    
    NSString *fullPath = [self documentsPathForFileName:path];
    UIImage *image = [UIImage imageNamed:fullPath];
    return image;
}

-(void)addPost:(Post *)post {
    
    [_loadedPosts addObject:post];
    [self savePosts];
    [self loadPosts];
}

-(NSString *)documentsPathForFileName:(NSString *)name {
    
    NSArray<NSString *> *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *fullPath = [paths objectAtIndex:0];
    return [fullPath stringByAppendingPathComponent:name];
}

@end
