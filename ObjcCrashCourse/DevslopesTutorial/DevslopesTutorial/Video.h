//
//  Video.h
//  DevslopesTutorial
//
//  Created by Allen Czerwinski on 5/13/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject
@property(nonatomic,strong) NSString *videoTitle;
@property(nonatomic,strong) NSString *videoDescription;
@property(nonatomic,strong) NSString *videoIframe;
@property(nonatomic,strong) NSString *thumbnailUrl;
@end
