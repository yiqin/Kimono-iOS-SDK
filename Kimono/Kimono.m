//
//  Kimono.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"

static NSString *KimonoAPIKey;

@implementation Kimono

+ (void)setAPIKey:(NSString *)APIKey
{
    KimonoAPIKey = APIKey;
}

+ (NSString *)getAPIKey
{
    return KimonoAPIKey;
}

@end
