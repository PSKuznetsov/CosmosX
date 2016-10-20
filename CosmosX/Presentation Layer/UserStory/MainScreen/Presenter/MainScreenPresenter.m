//
//  MainScreenPresenter.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenPresenter.h"

#import "MainScreenViewInput.h"
#import "MainScreenInteractorInput.h"
#import "MainScreenRouterInput.h"

@implementation MainScreenPresenter

#pragma mark - MainScreenModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - MainScreenViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self.interactor initialSetup];
    
    NSArray* storedEvents = [self.interactor obtainEventList];
    
    if (storedEvents.count > 0) {
        [self updateViewWithEvents:storedEvents];
    } else {
        //TODO:Show loading view
    }
}

- (void)didTriggerEventTapEventWithObject:(PONSOModel *)event {
    //TODO:Open router with object
}

#pragma mark - MainScreenInteractorOutput

- (void)didUpdateEventsListWithEvents:(NSArray *)events {
    [self updateViewWithEvents:events];
}

#pragma mark - MainScreenInteractorInput



#pragma mark - Private Methods

- (void)updateViewWithEvents:(NSArray *)events {
    [self.view updateStateWithEventsLits:events];
}

@end
