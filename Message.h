//
//  Message.h
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@interface Message : NSObject {
    NSString *text;
    float rating;
    User *user;
    NSDate *timestamp;
    int messageID;
}

@property (nonatomic, retain) NSString *text;
@property (nonatomic) float rating;
@property (nonatomic) int messageID;
@property (nonatomic, retain) NSDate *timestamp;
@property (nonatomic, retain) User *user;

@end
