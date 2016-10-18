//
//  DataStoreProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol DataStoreProtocol <NSObject>

- (void)storeModel:(PONSOModel *)model withCompletionBlock:(void(^)(NSError* error))block;
- (void)modelForDate:(NSString *)date  withCompletionBlock:(void(^)(PONSOModel* model, NSError* error))block;
- (PONSOModel *)retrieveModelForID:(NSInteger)identifier;
- (NSInteger)countOfModels;

@end
