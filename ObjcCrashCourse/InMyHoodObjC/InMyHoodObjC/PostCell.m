//
//  PostCell.m
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/2/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "PostCell.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    myDataService = [DataService sharedInstance];
    
    int frameSize = _postImg.frame.size.width / 2;
    [[_postImg layer] setCornerRadius:frameSize];
    _postImg.clipsToBounds = YES;
    
}

-(void)configureCell:(Post *)post {
    
    [_titleLabel setText:post.title];
    [_descriptionLabel setText:post.postDesc];
    [_postImg setImage:[myDataService imageForPath:post.imagePath]];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
