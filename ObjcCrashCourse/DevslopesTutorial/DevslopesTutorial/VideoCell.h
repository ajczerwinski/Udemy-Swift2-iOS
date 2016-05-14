//
//  VideoCell.h
//  DevslopesTutorial
//
//  Created by Allen Czerwinski on 5/12/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoCell : UITableViewCell
-(void)updateUI:(nonnull Video*)video;
@end
