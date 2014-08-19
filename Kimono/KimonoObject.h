//
//  KimonoObject.h
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/19/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KimonoObject : NSObject

@property(nonatomic, strong) NSString *APIId;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *targeturl;
@property(nonatomic, strong) NSString *frequency;
@property(nonatomic) BOOL crawlingenabled;
@property(nonatomic, strong) NSDictionary *instructions; // another object
@property(nonatomic, strong) NSString *lastrun;          // data
@property(nonatomic, strong) NSString *lastsuccess;
@property(nonatomic, strong) NSString *lastrunstatus;    // data
@property(nonatomic) int lastversion;
@property(nonatomic) BOOL newdata;
@property(nonatomic) BOOL meta;
@property(nonatomic) BOOL online;
@property(nonatomic, strong) NSArray *webhookuris;
@property(nonatomic, strong) NSArray *alertemails;
@property(nonatomic, strong) NSArray *collectionNames;

- (id)initWithJSON:(NSDictionary *)JSON;

@end
