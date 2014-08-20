//
//  Kimono.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "Kimono.h"

@interface Kimono ()
@property(nonatomic, strong) NSString *KimonoAPIKey;

@end

@implementation Kimono

+ (instancetype)sharedManager
{
    static Kimono *sharedKimono = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedKimono = [[self alloc] init];
    });
    return sharedKimono;
}

- (instancetype)init
{
    if (self = [super init]) {
        _KimonoAPIKey = @"Default";
    }
    return self;
}

+ (void)setAPIKey:(NSString *)APIKey
{
    Kimono *shared = [Kimono sharedManager];
    shared.KimonoAPIKey = APIKey;
}

+ (NSString *)getAPIKey
{
    Kimono *shared = [Kimono sharedManager];
    return shared.KimonoAPIKey;
}

@end
