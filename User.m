//
//  User.m
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import "User.h"

@implementation User
@synthesize email;
@synthesize username;
@synthesize achievements;
@synthesize messages;
@synthesize rank;
@synthesize MP_Points;

-(id) initWithDict:(NSDictionary*) dict {
    
    self = [User init];
    
    // Parse user struct here
    
    return self;
}

-(id) init {
    self = [super init];
    self.achievements = [[NSMutableArray alloc]init];
    self.messages = [[NSMutableArray alloc]init];
    return self;
}


@end
