//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"
#import "KimonoObject.h"
#import "KimonoQuery.h"

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


@property (nonatomic, strong) KimonoObject *apiobject;

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
- (void)getResponseCompletionBlockWithSuccess:(void (^)(KimonoObject *kimonoObject, NSDictionary *responseResults))success
                                      failure:(void (^)(NSError *error))failure;


/*!
 Send an API request
 @param success Returns an Kimono object for the API that matches a specific id.
 @param failure Failure
 */
- (void)retrieveAPICompletionBlockWithSuccess:(void (^)(KimonoObject *kimonoObject))success
                                      failure:(void (^)(NSError *error))failure;



- (void)listAllAPIsCompletionBlockWithSuccess:(void (^)(KimonoQuery *kimonoQuery))success
                                      failure:(void (^)(NSError *error))failure;

///////////
// Setting
///////////
- (void)setTargeturl:(NSString *)targeturl
             success:(void (^)(KimonoObject *newKimonoObject))success
             failure:(void (^)(NSError *error))failure;


- (void)setFrequency:(NSString *)frequency
             success:(void (^)(KimonoObject *newKimonoObject))success
             failure:(void (^)(NSError *error))failure;



@end
