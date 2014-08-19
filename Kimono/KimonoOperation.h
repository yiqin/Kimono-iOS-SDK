//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"
#import "KimonoResponseObject.h"

@interface KimonoOperation : NSObject

// @property (nonatomic, strong) NSString *KimonoURL;

/*!
 Kimono API_ID
 */
@property (nonatomic, strong) NSString *APIID;

/*!
 Kimono apikey
 */
@property (nonatomic, strong) NSString *apikey;


@property (nonatomic, strong) KimonoObject *responseObject;

/*!
 Sets the applicationId and clientKey of your application.
 @param applicationId The application id for your Parse application.
 @param clientKey The client key for your Parse application.
 */
- (id)initWithAPIID:(NSString *)APIID;

/*!
 Send an API request
 @param success Do something when it success.
 @param failure Failure
 */
- (void)sendRequestCompletionBlockWithSuccess:(void (^)(NSString *str))success
                                      failure:(void (^)(NSError *error))failure;


/*!
 Send an API request
 @param success Returns an Kimono object for the API that matches a specific id.
 @param failure Failure
 */
- (void)retrieveAPICompletionBlockWithSuccess:(void (^)(NSString *str))success
                                      failure:(void (^)(NSError *error))failure;



- (void)listAllAPIsCompletionBlockWithSuccess:(void (^)(NSString *str))success
                                      failure:(void (^)(NSError *error))failure;



- (void)setTargeturl:(NSString *)targeturl
             success:(void (^)(NSString *str))success
             failure:(void (^)(NSError *error))failure;


- (void)setFrequency:(NSString *)frequency
             success:(void (^)(NSString *str))success
             failure:(void (^)(NSError *error))failure;



@end
