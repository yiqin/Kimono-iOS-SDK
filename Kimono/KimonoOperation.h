//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"
#import "KimonoResponseObject.h"
#import "KimonoResponseQuery.h"

@interface KimonoOperation : NSObject

// @property (nonatomic, strong) NSString *KimonoURL;

/*!
 Kimono apiid
 */
@property (nonatomic, strong) NSString *apiid;

/*!
 Kimono apikey
 */
@property (nonatomic, strong) NSString *apikey;


@property (nonatomic, strong) KimonoResponseObject *responseObject;

/*!
 Sets the applicationId and clientKey of your application.
 @param applicationId The application id for your Parse application.
 @param clientKey The client key for your Parse application.
 */
- (instancetype)initWithAPIId:(NSString *)apiid;

/*!
 Sends an API request and gets a Kimono API response.
 @param success Do something when it success.
 @param failure Failure
 */
- (void)getResponseCompletionBlockWithSuccess:(void (^)(KimonoResponseObject *kimonoResponseObject))success
                                      failure:(void (^)(NSError *error))failure;


/*!
 Send an API request
 @param success Returns an Kimono object for the API that matches a specific id.
 @param failure Failure
 */
- (void)retrieveAPICompletionBlockWithSuccess:(void (^)(KimonoResponseObject *kimonoResponseObject))success
                                      failure:(void (^)(NSError *error))failure;



- (void)listAllAPIsCompletionBlockWithSuccess:(void (^)(KimonoResponseQuery *kimonoResponseQuery))success
                                      failure:(void (^)(NSError *error))failure;

///////////
// Setting
///////////
- (void)setTargeturl:(NSString *)targeturl
             success:(void (^)(KimonoResponseObject *newKimonoResponseObject))success
             failure:(void (^)(NSError *error))failure;


- (void)setFrequency:(NSString *)frequency
             success:(void (^)(KimonoResponseObject *newKimonoResponseObject))success
             failure:(void (^)(NSError *error))failure;



@end
