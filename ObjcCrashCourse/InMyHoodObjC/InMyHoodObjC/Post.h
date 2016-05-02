//
//  Post.h
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject <NSCoding> {
    
    NSString *imagePath;
    NSString *title;
    NSString *postDesc;
    
}

@property (nonatomic, copy) NSString *imagePath;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *postDesc;

-(id)initWithImagePath:(NSString *)aImagePath title:(NSString *)aTitle description:(NSString *)aDescription;

@end
