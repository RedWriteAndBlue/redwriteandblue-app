//
//  Message.h
//  User Profile
//
//  Created by Nussbaum, Brian, Edward on 3/2/13.
//  Copyright (c) 2013 Takamichi Suzuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject {

    NSString *user;
    NSString *text;
    NSString *messageid;
    int rating;
    int sentstatus;
    NSDate *timestamp;
    
}

@property (nonatomic, retain) NSString *user;
@property (nonatomic, retain) NSString *text;
@property (nonatomic, retain) NSString *messageid;
@property (nonatomic) int rating;
@property (nonatomic) int sentstatus;
@property (nonatomic, retain) NSDate *timestamp;




@end
