//
//  User.h
//  User Profile
//
//  Created by Nussbaum, Brian, Edward on 3/2/13.
//  Copyright (c) 2013 Takamichi Suzuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {

    NSString *email;
    NSString *username;
    NSString *rank;
     int meritpoints;
    NSMutableArray *achievement;
    NSMutableArray *message;
    
//    NSDate *time;
    
}

@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *username;
@property (nonatomic, retain) NSString *rank;
@property (nonatomic) int meritPoints;
@property (nonatomic, retain) NSMutableArray *achievement;
@property (nonatomic, retain) NSMutableArray *message;




@end
