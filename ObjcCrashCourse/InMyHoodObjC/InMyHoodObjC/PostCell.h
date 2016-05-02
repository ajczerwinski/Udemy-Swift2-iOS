//
//  PostCell.h
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/2/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "DataService.h"

@interface PostCell : UITableViewCell {
    
    DataService *myDataService;
    
}

@property(nonatomic, weak) IBOutlet UIImageView *postImg;
@property(nonatomic, weak) IBOutlet UILabel *titleLabel;
@property(nonatomic, weak) IBOutlet UILabel *descriptionLabel;

-(void)configureCell:(Post *)post;


@end
