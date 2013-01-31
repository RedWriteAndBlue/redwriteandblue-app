//
//  DetailViewController.h
//  User Profile
//
//  Created by Takamichi Suzuki on 1/30/13.
//  Copyright (c) 2013 Takamichi Suzuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
