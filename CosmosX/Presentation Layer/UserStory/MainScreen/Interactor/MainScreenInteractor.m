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
    NSDate* yesterday = [today dateByAddingTimeInterval: -86400.0];
    
    [self.networkDataRequest requestDataFromDate:yesterday
                                          completion:^(PONSOModel *model, NSError *error) {
                                              
                                              __strong typeof(self) strongSelf = weakSelf;
                                              NSLog(@"RETRIEVE PONSO: %@", model.url);
                                              [strongSelf.dataStore storeModel:model
                                                     withCompletionBlock:^(NSError *error) {
                                                         
                                                         NSLog(@"%@", error.localizedDescription);
                                                         dispatch_async(dispatch_get_main_queue(), ^{
                                                             [strongSelf.output updateMainView];
                                                         });
                                                     }];
    }];
}

@end
