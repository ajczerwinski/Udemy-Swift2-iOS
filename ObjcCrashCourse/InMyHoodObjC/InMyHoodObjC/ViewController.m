//
//  ViewController.m
//  InMyHoodObjC
//
//  Created by Allen Czerwinski on 5/1/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myDataService = [DataService sharedInstance];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                          selector:@selector(onPostsLoaded:)
                                          name:@"postsLoaded"
                                          object:nil];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
     return 1;
}
     
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return myDataService.loadedPosts.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     Post *post = myDataService.loadedPosts[indexPath.row];
     static NSString *CellIdentifier =@"PostCell";
     PostCell *cell = (PostCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
     [cell configureCell:post];
     
     return cell;
}
 
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
     return 87.0;
}

-(void)onPostsLoaded:(NSNotification *)note {
     [self.tableView reloadData];
}

@end
