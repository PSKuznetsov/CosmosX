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

- (PONSOModel *)mapResource:(NSDictionary *)dictionary {
    
    PONSOModel* model = [[PONSOModel alloc]init];
    NSArray* allKeys = [dictionary allKeys];
    
    for (NSString* key in allKeys) {
        
        SEL selector = NSSelectorFromString(key);
        
        if ([model respondsToSelector:selector]) {
            
//For Getters
//            IMP implementation = [model methodForSelector:selector];
//            void (*func)(id, SEL, NSString*)  = (void *)implementation;
//            func(model, selector, [dictionary objectForKey:key]);
            [model setValue:[dictionary objectForKey:key] forKey:key];
        }
    }
    
    return model;
}

@end
