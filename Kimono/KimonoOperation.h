//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"

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
- (void)sendRequestCompletionBlockWithSuccess:(void (^)(NSString *str))success failure:(void (^)(NSError *error))failure;

@end
