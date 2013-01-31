//
//  MasterViewController.h
//  User Profile
//
//  Created by Takamichi Suzuki on 1/30/13.
//  Copyright (c) 2013 Takamichi Suzuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
