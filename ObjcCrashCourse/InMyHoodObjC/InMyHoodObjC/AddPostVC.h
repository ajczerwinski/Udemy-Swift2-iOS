//
//  AddPostVC.h
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/2/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataService.h"
#import "Post.h"

@interface AddPostVC : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    
    DataService *myDataService;
    
}

@end
