//
//  AppState.h
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@class RWB_IO;
@interface AppState : NSObject {

    User *user;
    RWB_IO *io;
}

@property (nonatomic, retain) User *user;
@property (nonatomic, retain) RWB_IO *io;

+(AppState *)sharedInstance;

@end
