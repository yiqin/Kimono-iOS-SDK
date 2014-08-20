//
//  KimonoObject.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/19/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "KimonoResponseObject.h"

@implementation KimonoResponseObject

- (instancetype)initWithJSON:(NSDictionary *)JSON
{
    self = [super init];
    if (self) {
        
        self.apiid = [JSON objectForKey:@"id"];
        self.name = [JSON objectForKey:@"name"];
        self.targeturl = [JSON objectForKey:@"targeturl"];
        self.frequency = [JSON  objectForKey:@"frequency"];
        self.crawlingenabled = [[JSON objectForKey:@"crawlingenabled"] boolValue];
        self.instructions = [JSON objectForKey:@"instructions"];
        
        self.lastrun = [JSON objectForKey:@"lastrun"];
        self.lastsuccess = [JSON objectForKey:@"lastsuccess"];
        self.thisversionrun = [JSON objectForKey:@"thisversionrun"];
        self.nextrun = [JSON objectForKey:@"nextrun"];
        
        self.lastrunstatus = [JSON objectForKey:@"lastrunstatus"];
        
        self.lastversion = [JSON objectForKey:@"lastversion"];
        self.version = [JSON objectForKey:@"version"];
        
        self.newdata = [[JSON objectForKey:@"newdata"] boolValue];
        self.meta = [[JSON objectForKey:@"meta"] boolValue];
        self.online = [[JSON objectForKey:@"online"] boolValue];
        
        self.webhookuris = [JSON objectForKey:@"webhookuris"];
        self.alertemails = [JSON objectForKey:@"alertemails"];
        self.collectionNames = [JSON objectForKey:@"collectionNames"];
        
        self.count = [JSON objectForKey:@"count"];
        
        self.results = [JSON objectForKey:@"results"];
        
    }
    return self;
}

@end
