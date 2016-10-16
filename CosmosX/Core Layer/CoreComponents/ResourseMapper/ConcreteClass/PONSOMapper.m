//
//  PONSOMapper.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "PONSOMapper.h"
#import "PONSOModel.h"

static NSString * const copyright       =   @"copyright";
static NSString * const date            =   @"date";
static NSString * const explanation     =   @"explanation";
static NSString * const hdurl           =   @"hdurl";
static NSString * const media_type      =   @"media_type";
static NSString * const service_version =   @"service_version";
static NSString * const title           =   @"title";
static NSString * const url             =   @"url";

@implementation PONSOMapper

- (id)mapResource:(NSDictionary *)dictionary {
    
    PONSOModel* model = nil;
    if ([dictionary objectForKey:copyright]) {
        model.copyright = [dictionary objectForKey:copyright];
    }
    else if ([dictionary objectForKey:date]) {
        model.date = [dictionary objectForKey:date];
    }
    else if ([dictionary objectForKey:explanation]) {
        model.explanation = [dictionary objectForKey:explanation];
    }
    else if ([dictionary objectForKey:hdurl]) {
        model.hdurl = [dictionary objectForKey:hdurl];
    }
    else if ([dictionary objectForKey:media_type]) {
        model.media_type = [dictionary objectForKey:media_type];
    }
    else if ([dictionary objectForKey:service_version]) {
        model.service_version = [dictionary objectForKey:service_version];
    }
    else if ([dictionary objectForKey:title]) {
        model.title = [dictionary objectForKey:title];
    }
    else if ([dictionary objectForKey:url]) {
        model.explanation = [dictionary objectForKey:url];
    }
    
    return model;
}

@end
