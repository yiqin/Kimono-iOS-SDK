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
    NSString *path = [NSString stringWithFormat:@"%@/api/%@?apikey=%@", kimonoURL, self.apiid,self.apikey];
    
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
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis/%@?apikey=%@", kimonoURL, self.apiid,self.apikey];
    
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

- (void)listAllAPIsCompletionBlockWithSuccess:(void (^)(KimonoResponseQuery *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis?apikey=%@", kimonoURL, self.apikey];
    
    AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseQuery) {
        KimonoResponseQuery *kimonoResponseQuery = [[KimonoResponseQuery alloc] initWithJSON:responseQuery];
        success(kimonoResponseQuery);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)setTargeturl:(NSString *)targeturl success:(void (^)(KimonoResponseObject *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis/%@/update", kimonoURL, self.apiid];
    NSDictionary *parameters = @{@"apikey": self.apikey,
                                 @"targeturl": targeturl};
    
    AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager POST:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        BOOL isWrong = [[responseObject objectForKey:@"error"] boolValue];
        if (!isWrong) {
            KimonoResponseObject *kimonoResponseObject = [[KimonoResponseObject alloc] initWithJSON:[responseObject objectForKey:@"api"]];
            success(kimonoResponseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)setFrequency:(NSString *)frequency success:(void (^)(KimonoResponseObject *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis/%@/update", kimonoURL, self.apiid];
    NSDictionary *parameters = @{@"apikey": self.apikey,
                                 @"frequency": frequency};
    
    AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager POST:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        BOOL isWrong = [[responseObject objectForKey:@"error"] boolValue];
        if (!isWrong) {
            KimonoResponseObject *kimonoResponseObject = [[KimonoResponseObject alloc] initWithJSON:[responseObject objectForKey:@"api"]];
            success(kimonoResponseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}


@end















