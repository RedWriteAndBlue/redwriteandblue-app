//
//  RWB_IO.m
//  Red Write Blue
//
//  Created by Chenkai Liu on 4/3/13.
//  Copyright (c) 2013 RedWriteBlue. All rights reserved.
//

#import "RWB_IO.h"
#import "User.h"

@implementation RWB_IO


-(id) init {
    self = [super init];
    
    accessCode = @"djdk3kj53DJdkjj";
    
    return self;
}

-(int) loginWithUser:(NSString *)username pass:(NSString *)pass {
    
    NSString *methodname = @"login";
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            username, @"username",
                            pass, @"password",
                            nil];
    NSDictionary *resultDict = [self executeMethod:methodname withParameters:params onRemoteClass:NULL];
    
    return NULL;
}

-(User*) signUpWithUsername:(NSString *)Username password:(NSString*)password email:(NSString*)email {
    
    NSString *methodname = @"signup";
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            Username, @"username",
                            password, @"password",
                            email, @"email",
                            nil];
    NSDictionary *resultDict = [self executeMethod:methodname withParameters:params onRemoteClass:NULL];
    
    return NULL;
}

-(User *)getUserProfile:(int) userID {
    
    NSString *methodname = @"getprofile";
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            [NSNumber numberWithInt:userID], @"userID",
                            nil];
    NSDictionary *resultDict = [self executeMethod:methodname withParameters:params onRemoteClass:NULL];
    
    return NULL;
}

-(NSMutableArray*)getLeaderboard {
    
    NSString *methodname = @"getleaderboard";
    NSDictionary *params = NULL;
    NSDictionary *resultDict = [self executeMethod:methodname withParameters:params onRemoteClass:NULL];
    
    return NULL;
}


/** Execute method with the given parameters, url extension, method name and error pointer **/
- (NSDictionary*) executeMethod: (NSString *)method withParameters: (id)parameters onRemoteClass: (NSString *)class {
    
    
    // Set json fields for the request
    NSMutableDictionary *jsonfields = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                       method,@"method",
                                       VERSION,@"version",
                                       parameters, @"params",
                                       accessCode, @"accessCode",
                                       [[NSMutableArray alloc]initWithObjects:
                        [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"yep", @"key1", @"rer", @"sdsd", nil],
                        [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"another", @"key2", nil],
                        [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"hello", @"key3", nil],
                                            nil], @"random",
                                       nil];
    NSError *requestError = nil;
    
    NSLog(@"JSON FIELD: %@", jsonfields);
    
    NSData *jsonRequestData = [NSJSONSerialization dataWithJSONObject:jsonfields options:NSJSONReadingMutableContainers error:&requestError];
    
    NSString *urlstring = [self rpcUrl];
    
    if (class) {
        urlstring = [urlstring stringByAppendingString:class];
    }
    
    NSURL *serverURL = [NSURL URLWithString:urlstring];
    
    // Form request
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:serverURL];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPBody:jsonRequestData];
    [request setCachePolicy: NSURLCacheStorageNotAllowed];
    [request setValue:@"application/json" forHTTPHeaderField:@"content-type"];
    // Send request and receive response
    NSURLResponse *response;
    NSError *err;
    
    
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    
    // If no internet connection or no response, return NULL
    if (!responseData)
        return NULL;
    
    
    NSDictionary *responsedict = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers error:&err];

    
    // If login fails, return NULL
    // a null resonse does not mean that the request failed, we need to be able get those errors, as in some contexts they may be relevant.
    if ([[responsedict objectForKey:@"error"]isKindOfClass:[NSNull class]] || [responsedict objectForKey:@"error"]==[NSNull null])
        NSLog(@"We have an error");
    
    
    if (nil != [responsedict valueForKey:@"error"] && ![[responsedict objectForKey:@"error"]isKindOfClass:[NSNull class]]){
        // Do something with the response
    }
    
    return responsedict;
}

-(NSString *)rpcUrl {
    return SERVER_ENDPOINT;
}

@end
