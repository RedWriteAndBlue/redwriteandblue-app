//
//  Achievement.h
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Achievement : NSObject {
    BOOL awarded;
    NSString *name;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic) BOOL awarded;

@end
