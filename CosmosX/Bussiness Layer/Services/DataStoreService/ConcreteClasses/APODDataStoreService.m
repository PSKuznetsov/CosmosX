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

- (void)modelForDate:(NSDate *)date withCompletionBlock:(void(^)(PONSOModel* model, NSError* error))block {
    
    NSString* formatDate = [self.dateFormatter formateDateForRequest:date];
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"date = %@", formatDate];
    
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

- (PONSOModel *)modelForDate:(NSDate *)date {
    
    NSString* formatDate = [self.dateFormatter formateDateForRequest:date];
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"date = %@", formatDate];
    
    APODData* requestedModel = [[APODData objectsWithPredicate:predicate]firstObject];
        if (requestedModel) {
            PONSOModel* model = [self.adapter adaptModel:requestedModel forType:PONSOModelType];
            return model;
        }
        else {
            return nil;
        }
}

- (PONSOModel *)retrieveModelForID:(NSInteger)identifier {
    
    NSDate* date = [self.dateFormatter dateForIndex:identifier];
    return [self modelForDate:date];
}

- (NSInteger)countOfModels {
    
    NSInteger modelsCount = [[APODData allObjects]count];
    
    return modelsCount;
}

- (NSInteger)count {
    
    NSDate* today = [self.dateFormatter formatDateForTimeZone:[NSDate date]];
    NSDate* originDate = [self.dateFormatter originDate];
    
    NSInteger count = [self daysBetweenDate:originDate andDate:today];
    NSLog(@"DAYS COUNT: %ld", (long)count);
    
    return count;
}

- (NSInteger)daysBetweenDate:(NSDate*)fromDateTime andDate:(NSDate*)toDateTime {
    
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                 interval:NULL forDate:fromDateTime];
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                 interval:NULL forDate:toDateTime];
    
    NSDateComponents *difference = [calendar components:NSCalendarUnitDay
                                               fromDate:fromDate toDate:toDate options:0];
    
    return [difference day];
}

@end
