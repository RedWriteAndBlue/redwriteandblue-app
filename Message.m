//
//  Message.m
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import "Message.h"

@implementation Message
@synthesize text;
@synthesize rating;
@synthesize user;
@synthesize timestamp;
@synthesize messageID;

-(id) initWithDict:(NSDictionary*)dict {
    self = [super init];
    
    // Parse message here
    
    return self;
}

@end
