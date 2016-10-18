//
//  MainScreenInteractor.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenInteractor.h"

#import "MainScreenInteractorOutput.h"
#import "PONSOModel.h"

@implementation MainScreenInteractor

#pragma mark - MainScreenInteractorInput

- (void)initialSetup {
    
}

- (PONSOModel *)retrieveDataForObjectID:(NSInteger)identifier {
    
    
}

- (void)retrieveDataForDate:(NSDate *)date {
    
    [self.dataStore modelForDate:date
             withCompletionBlock:^(PONSOModel *model, NSError *error) {
        
    }];
    
    __weak typeof(self) weakSelf = self;
    [self.networkDataRequest requestDataFromDate:date
                                          completion:^(PONSOModel *model, NSError *error) {
                                              
                                              __strong typeof(self) strongSelf = weakSelf;
                                              [strongSelf.dataStore storeModel:model
                                                     withCompletionBlock:^(NSError *error) {
                                                             [strongSelf.output updateMainView];
                                                     }];
    }];
}

@end
