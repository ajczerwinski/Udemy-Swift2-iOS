//
//  ViewController.h
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostCell.h"
#import "Post.h"
#import "DataService.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    
    DataService *myDataService;
}



@end

