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

- (void)retrieveUpToDateAPOD {
    
    __weak typeof(self) weakSelf = self;
    NSDate* today = [NSDate date];
    //NSDate* yesterday = [today dateByAddingTimeInterval: -86400.0];
    
    [self.networkDataRequest requestDataFromDate:today
                                          completion:^(PONSOModel *model, NSError *error) {
                                              
                                              __strong typeof(self) strongSelf = weakSelf;
                                              [strongSelf.dataStore storeModel:model
                                                     withCompletionBlock:^(NSError *error) {
                                                             [strongSelf.output updateMainView];
                                                     }];
    }];
}

@end
