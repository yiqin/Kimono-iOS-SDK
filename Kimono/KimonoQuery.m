//
//  KimonoResponseQuery.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/21/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "KimonoQuery.h"

@implementation KimonoQuery

- (instancetype)initWithJSON:(NSDictionary *)JSON
{
    self = [super init];
    if (self) {
        self.count = [JSON objectForKey:@"count"];
        self.object = [JSON objectForKey:@"object"];
        self.data = [JSON objectForKey:@"data"];
    }
    return self;
}


@end
