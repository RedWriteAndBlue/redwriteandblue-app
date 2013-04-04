//
//  RWB_IO.h
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@interface RWB_IO : NSObject {
    NSString *accessCode;
}


-(int) loginWithUser:(NSString *)username pass:(NSString *)pass;
-(User*) signUpWithUsername:(NSString *)Username password:(NSString*)password email:(NSString*)email;
-(User *)getUserProfile:(int) userID;
-(NSMutableArray*)getLeaderboard;

@end
