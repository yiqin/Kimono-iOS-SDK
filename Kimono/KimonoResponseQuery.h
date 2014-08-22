//
//  KimonoResponseQuery.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/21/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KimonoResponseObject.h"

@interface KimonoResponseQuery : NSObject

@property(nonatomic, strong) NSNumber *count;
@property(nonatomic, strong) NSString *object;
@property(nonatomic, strong) NSArray *data;

- (instancetype)initWithJSON:(NSDictionary *)JSON;

@end
