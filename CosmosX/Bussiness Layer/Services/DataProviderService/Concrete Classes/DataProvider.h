//
//  DataProvider.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataProviderProtocol.h"

@class PONSOModel;

@protocol DataStoreProtocol;
@protocol DataRequestProtocol;

@interface DataProvider : NSObject <DataProviderProtocol>

#pragma mark - Dependencies

@property (nonatomic, strong) id<DataStoreProtocol> dataStore;
@property (nonatomic, strong) id<DataRequestProtocol> networkDataRequest;

- (void)provideModelForEventIndex:(NSInteger)index completionBlock:(void(^)(PONSOModel* model, NSError* error))block;
- (NSInteger)count;

@end
