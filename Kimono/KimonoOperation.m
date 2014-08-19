//
//  KimonoObject.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "KimonoOperation.h"
#import "AFNetworking.h"

// ????
static NSString * const kimonoURL = @"https://www.kimonolabs.com";

@implementation KimonoOperation

- (id)initWithAPIID:(NSString *)APIID
{
    self = [super init];
    if (self) {
        self.APIID = APIID;
        self.apikey = [Kimono getAPIKey];
    }
    return self;
}

- (void)sendRequestCompletionBlockWithSuccess:(void (^)(NSString *))success failure:(void (^)(NSError *))failure
{
    NSMutableString *path = [[NSMutableString alloc]init];
    
    [path appendString:kimonoURL];
    [path appendString:@"/api/"];
    [path appendString:self.APIID];
    [path appendString:@"?apikey="];
    [path appendString:self.apikey];
    
	AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"SUCCESS");
        success(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		NSLog(@"FAILED");
        failure(error);
        
    }];
}

@end
