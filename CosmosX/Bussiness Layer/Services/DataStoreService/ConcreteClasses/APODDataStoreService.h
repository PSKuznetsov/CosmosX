//
//  APODDataStoreService.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataStoreProtocol.h"
#import "ModelAdapterProtocol.h"
#import "APODDateFormatterProtocol.h"

@interface APODDataStoreService : NSObject <DataStoreProtocol>

#pragma mark - Dependecies

@property (nonatomic, strong) id<ModelAdapterProtocol> adapter;
@property (nonatomic, strong) id<APODDateFormatterProtocol> dateFormatter;

#pragma mark - DataStoreProtocol

- (void)storeModel:(PONSOModel *)model withCompletionBlock:(void(^)(NSError* error))block;
- (void)modelForDate:(NSDate *)date  withCompletionBlock:(void(^)(PONSOModel* model, NSError* error))block;
- (PONSOModel *)retrieveModelForID:(NSInteger)identifier;
- (NSInteger)countOfModels;
- (NSInteger)count;

@end
