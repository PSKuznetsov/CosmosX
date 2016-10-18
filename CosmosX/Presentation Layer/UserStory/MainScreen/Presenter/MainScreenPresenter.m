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

- (void)didTriggerViewReadyEventWithTodayDate {
	[self.view setupInitialState];
    [self.interactor initialSetup];
}

- (PONSOModel *)requestModelForObjectID:(NSInteger)identifier {
    
}


- (void)updateMainView {
    [self.view updateView];
}

#pragma mark - MainScreenInteractorOutput

@end
