//
//  StoreModelAdapter.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "StoreModelAdapter.h"
#import "PONSOModel.h"
#import "APODData.h"

@implementation StoreModelAdapter

- (id)adaptModel:(id)model forType:(ModelType)type {
    
    id adaptedModel = nil;
        
    if (type == RealmModelType) {
        
        PONSOModel* originModel = (PONSOModel *)model;
        APODData* buffer = [[APODData alloc] init];
        adaptedModel = buffer;
        
        [adaptedModel setValue:originModel.copyright        forKey:@"copyright"];
        [adaptedModel setValue:originModel.date             forKey:@"date"];
        [adaptedModel setValue:originModel.explanation      forKey:@"explanation"];
        [adaptedModel setValue:originModel.hdurl            forKey:@"hdurl"];
        [adaptedModel setValue:originModel.url              forKey:@"url"];
        [adaptedModel setValue:originModel.service_version  forKey:@"service_version"];
        [adaptedModel setValue:originModel.media_type       forKey:@"media_type"];
        [adaptedModel setValue:originModel.title            forKey:@"title"];
    }
    else if (type == PONSOModelType) {
        
        APODData* originModel = (APODData *)model;
        adaptedModel = [[PONSOModel alloc] init];
        
        [adaptedModel setValue:originModel.copyright        forKey:@"copyright"];
        [adaptedModel setValue:originModel.date             forKey:@"date"];
        [adaptedModel setValue:originModel.explanation      forKey:@"explanation"];
        [adaptedModel setValue:originModel.hdurl            forKey:@"hdurl"];
        [adaptedModel setValue:originModel.url              forKey:@"url"];
        [adaptedModel setValue:originModel.service_version  forKey:@"service_version"];
        [adaptedModel setValue:originModel.media_type       forKey:@"media_type"];
        [adaptedModel setValue:originModel.title            forKey:@"title"];
    }
    return adaptedModel;
}

@end
