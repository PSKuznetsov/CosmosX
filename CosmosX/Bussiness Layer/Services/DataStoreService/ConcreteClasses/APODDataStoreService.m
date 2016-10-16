//
//  APODDataStoreService.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODDataStoreService.h"
#import "APODData.h"
#import <Realm/Realm.h>

@implementation APODDataStoreService

- (void)storeModel:(PONSOModel *)model withCompletionBlock:(void(^)(NSError* error))block {
    
    APODData* apod = [self.adapter adaptModel:model forType:RealmModelType];
    
    RLMRealm* realm = [RLMRealm defaultRealm];
    NSError* error = nil;
    
    [realm beginWriteTransaction];
    [realm addObject:apod];
    [realm commitWriteTransaction:&error];
    
    if (block) {
        block(error);
    }
}

- (void)modelForDate:(NSString *)date  withCompletionBlock:(void(^)(PONSOModel* model, NSError* error))block {
    
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"date = %@", date];
    APODData* requestedModel = [[APODData objectsWithPredicate:predicate]firstObject];
    
    if (block) {
        if (requestedModel) {
            PONSOModel* model = [self.adapter adaptModel:requestedModel forType:PONSOModelType];
            block(model, nil);
        }
        else {
            NSError* error = [NSError errorWithDomain:@"Request complete unsuccessful" code:404 userInfo:nil];
            block(nil, error);
        }
    }
    
}


@end
