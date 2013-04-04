//
//  LoginViewController.m
//  User Profile
//
//  Created by Chenkai Liu on 2/27/13.
//  Copyright (c) 2013 Takamichi Suzuki. All rights reserved.
//

#import "LoginViewController.h"
#import "AppState.h"
#import "RWB_IO.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [[AppState sharedInstance].io signUpWithUsername:@"hello" password:@"pass" email:@"blah@aol.com"];
//    [[AppState sharedInstance].io loginWithUser:@"myusername" pass:@"mypass"];
    [[AppState sharedInstance].io getUserProfile:5];
//    [[AppState sharedInstance].io getLeaderboard];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    [UIView animateWithDuration:0.3 animations:^{
        self.view.center = CGPointMake(self.view.center.x, self.view.center.y+50);
    }];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [UIView animateWithDuration:0.3 animations:^{
        self.view.center = CGPointMake(self.view.center.x, self.view.center.y-50);
    }];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
