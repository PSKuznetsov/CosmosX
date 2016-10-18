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

@interface APODDataStoreService ()
@property (nonatomic, strong) RLMResults<APODData*>* requestResult;
@end

@implementation APODDataStoreService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.requestResult = [[APODData allObjects] sortedResultsUsingProperty:@"date" ascending:NO];
    }
    return self;
}

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

- (void)modelForDate:(NSString *)date withCompletionBlock:(void(^)(PONSOModel* model, NSError* error))block {
    
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

- (PONSOModel *)retrieveModelForID:(NSInteger)identifier {
    
    RLMResults* results = [[APODData allObjects] sortedResultsUsingProperty:@"date" ascending:NO];
    APODData* requestedModel = [results objectAtIndex:identifier];
    PONSOModel* model = [self.adapter adaptModel:requestedModel forType:PONSOModelType];
    
    return model;
}

- (NSInteger)countOfModels {
    NSInteger modelsCount = [[APODData allObjects]count];
    return modelsCount;
}

@end
