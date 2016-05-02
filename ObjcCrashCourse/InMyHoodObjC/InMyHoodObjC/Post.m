//
//  Post.m
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Post.h"

@implementation Post

@synthesize imagePath;
@synthesize title;
@synthesize postDesc;

-(id)initWithImagePath:(NSString *)aImagePath title:(NSString *)aTitle description:(NSString *)aDescription {
    
    self = [super init];
    
    if(self) {
        
        imagePath = aImagePath;
        title = aTitle;
        postDesc = aDescription;
    }
    
    return self;
    
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    self.imagePath = [aDecoder decodeObjectForKey:@"imagePath"];
    self.postDesc = [aDecoder decodeObjectForKey:@"description"];
    self.title = [aDecoder decodeObjectForKey:@"title"];
    
    return self;
    
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.imagePath forKey:@"imagePath"];
    [aCoder encodeObject:self.postDesc forKey:@"description"];
    [aCoder encodeObject:self.title forKey:@"title"];
    
}

@end
