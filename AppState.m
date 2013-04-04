//
//  AppState.m
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import "AppState.h"
#import "User.h"
#import "RWB_IO.h"

@implementation AppState
@synthesize user;
@synthesize io;

static AppState *state = nil;

+(AppState *)sharedInstance {
    
    @synchronized(self) {
    
    if (!state) {
        state = [AppState new];
        state = [state init];
    }
        
    }
    
    return state;
}

-(id) init {
    if (self=[super init]) {
        
        self.user = [[User alloc]init];
        self.io = [[RWB_IO alloc ]init];
    }
    return self;
}

@end
