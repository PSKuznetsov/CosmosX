//
//  DataProviderProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol DataProviderProtocol <NSObject>

- (void)provideModelForEventIndex:(NSInteger)index completionBlock:(void(^)(PONSOModel* model, NSError* error))block;
- (NSInteger)count;

@end
