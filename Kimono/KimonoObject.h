//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/19/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KimonoObject : NSObject

@property(nonatomic, strong) NSString *apiid;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *targeturl;
@property(nonatomic, strong) NSString *frequency;
@property(nonatomic) BOOL crawlingenabled;
@property(nonatomic, strong) NSDictionary *instructions;

@property(nonatomic, strong) NSData *lastrun;
@property(nonatomic, strong) NSData *lastsuccess;
@property(nonatomic, strong) NSData *thisversionrun;
@property(nonatomic, strong) NSData *nextrun;

@property(nonatomic, strong) NSString *lastrunstatus;

@property(nonatomic, strong) NSNumber *lastversion;
@property(nonatomic, strong) NSNumber *version;

@property(nonatomic) BOOL newdata;
@property(nonatomic) BOOL meta;
@property(nonatomic) BOOL online;

@property(nonatomic, strong) NSArray *webhookuris;
@property(nonatomic, strong) NSArray *alertemails;
@property(nonatomic, strong) NSArray *collectionNames;

@property(nonatomic, strong) NSNumber *count;

@property(nonatomic, strong) NSDictionary *results;


- (instancetype)initWithJSON:(NSDictionary *)JSON;

@end
