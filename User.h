//
//  User.h
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {
    NSString *email;
    NSString *username;
    NSMutableArray *achievements;
    NSMutableArray *messages;
    int rank;
    int MP_Points;
}

@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *username;
@property (nonatomic, retain) NSMutableArray *achievements;
@property (nonatomic, retain) NSMutableArray *messages;
@property (nonatomic) int rank;
@property (nonatomic) int MP_Points;

@end
