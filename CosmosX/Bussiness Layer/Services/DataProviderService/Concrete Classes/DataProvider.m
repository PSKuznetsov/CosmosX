//
//  DataProvider.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "DataProvider.h"

#import "DataStoreProtocol.h"
#import "DataRequestProtocol.h"

#import "PONSOModel.h"

@implementation DataProvider

#pragma mark - DataProviderProtocol

- (void)provideModelForEventIndex:(NSInteger)index
                  completionBlock:(void(^)(PONSOModel* model, NSError* error))block {
    if (block) {
        
        PONSOModel* model = [self.dataStore retrieveModelForID:index];
        
        if (!model) {
            [self.networkDataRequest requestDataWithID:index
                                            completion:^(PONSOModel *model, NSError *error) {
                                                if (model) {
                                                    [self.dataStore storeModel:model withCompletionBlock:^(NSError *error) {
                                                        NSLog(@"ERROR: %@", error.localizedDescription);
                                                    }];
                                                    block(model, nil);
                                                }
                                                else {
                                                    block(nil, error);
                                                }
                                            }];
        }
        else {
            block(model, nil);
        }
    }
}


- (NSInteger)count {
    return [self.dataStore count];
}


@end
