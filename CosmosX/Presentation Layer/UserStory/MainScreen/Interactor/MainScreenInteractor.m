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
#import <EXTScope.h>

@implementation MainScreenInteractor

#pragma mark - MainScreenInteractorInput

- (void)initialSetup {
    
}

- (void)updateEventList {
    @weakify(self);
    [self.dataProvider provideModelForEventIndex:1 completionBlock:^(PONSOModel *model, NSError *error) {
        @strongify(self);
        NSMutableArray* events = [NSMutableArray new];
        
        [self.output didUpdateEventsListWithEvents:events];
    }];
}

- (NSArray <PONSOModel *> *)obtainEventList {
    NSMutableArray* events = [NSMutableArray new];
    
    return events;
}

- (void)retrieveDataForObjectID:(NSInteger)identifier {
    
    [self.dataProvider provideModelForEventIndex:identifier
                                 completionBlock:^(PONSOModel *model, NSError *error) {
        
    }];
}

@end
