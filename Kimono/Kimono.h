//
//  Kimono.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KimonoOperation.h"
#import "KimonoObject.h"

@interface Kimono : NSObject

/*!
 Sets the applicationId and clientKey of your application.
 @param KimonoAPIKey The application id for your Parse application.
 */
+ (void)setAPIKey:(NSString *) KimonoAPIKey;
+ (NSString *)getAPIKey;

@end
