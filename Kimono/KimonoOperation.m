//
//  KimonoObject.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "KimonoOperation.h"
#import "AFNetworking.h"

static NSString * const kimonoURL = @"https://www.kimonolabs.com";

@implementation KimonoOperation

- (instancetype)initWithAPIId:(NSString *)apiid
{
    self = [super init];
    if (self) {
        self.apiid = apiid;
        self.apikey = [Kimono getAPIKey];
    }
    return self;
}

- (void)getResponseCompletionBlockWithSuccess:(void (^)(KimonoResponseObject *))success failure:(void (^)(NSError *))failure
{
    NSMutableString *path = [[NSMutableString alloc] init];
    
    [path appendString:kimonoURL];
    [path appendString:@"/api/"];
    [path appendString:self.apiid];
    [path appendString:@"?apikey="];
    [path appendString:self.apikey];
    
	AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        KimonoResponseObject *kimonoResponseObject = [[KimonoResponseObject alloc] initWithJSON:responseObject];
        success(kimonoResponseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		
        failure(error);
        
    }];
}

- (void)retrieveAPICompletionBlockWithSuccess:(void (^)(KimonoResponseObject *))success failure:(void (^)(NSError *))failure
{
    NSMutableString *path = [[NSMutableString alloc] init];
    
    [path appendString:kimonoURL];
    [path appendString:@"/kimonoapis/"];
    [path appendString:self.apiid];
    [path appendString:@"?apikey="];
    [path appendString:self.apikey];
    
	AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        KimonoResponseObject *kimonoResponseObject = [[KimonoResponseObject alloc] initWithJSON:responseObject];
        success(kimonoResponseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		
        failure(error);
        
    }];
}

@end
