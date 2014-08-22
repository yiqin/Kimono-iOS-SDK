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
        self.apiobject = [[KimonoObject alloc] init];
    }
    return self;
}

- (void)getResponseCompletionBlockWithSuccess:(void (^)(KimonoObject *, NSDictionary *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/api/%@?apikey=%@", kimonoURL, self.apiid,self.apikey];
    
	AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        KimonoObject *kimonoObject = [[KimonoObject alloc] initWithJSON:responseObject];
        NSDictionary *responseResults = kimonoObject.results;
        self.apiobject = kimonoObject;
        success(kimonoObject, responseResults);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)retrieveAPICompletionBlockWithSuccess:(void (^)(KimonoObject *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis/%@?apikey=%@", kimonoURL, self.apiid,self.apikey];
    
	AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        KimonoObject *kimonoObject = [[KimonoObject alloc] initWithJSON:responseObject];
        self.apiobject = kimonoObject;
        success(kimonoObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)listAllAPIsCompletionBlockWithSuccess:(void (^)(KimonoQuery *))success failure:(void (^)(NSError *))failure
{
    NSString *path = [NSString stringWithFormat:@"%@/kimonoapis?apikey=%@", kimonoURL, self.apikey];
    
    AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
	operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
    operationManager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operationManager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseQuery) {
        KimonoQuery *kimonoQuery = [[KimonoQuery alloc] initWithJSON:responseQuery];
        success(kimonoQuery);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)setTargeturl:(NSString *)targeturl success:(void (^)(KimonoObject *))success failure:(void (^)(NSError *))failure
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
            KimonoObject *kimonoObject = [[KimonoObject alloc] initWithJSON:[responseObject objectForKey:@"api"]];
            self.apiobject = kimonoObject;
            success(kimonoObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)setFrequency:(NSString *)frequency success:(void (^)(KimonoObject *))success failure:(void (^)(NSError *))failure
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
            KimonoObject *kimonoObject = [[KimonoObject alloc] initWithJSON:[responseObject objectForKey:@"api"]];
            self.apiobject = kimonoObject;
            success(kimonoObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}


@end















