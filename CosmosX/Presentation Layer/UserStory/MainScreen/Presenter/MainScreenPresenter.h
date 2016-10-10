//
//  MainScreenPresenter.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenViewOutput.h"
#import "MainScreenInteractorOutput.h"
#import "MainScreenModuleInput.h"

@protocol MainScreenViewInput;
@protocol MainScreenInteractorInput;
@protocol MainScreenRouterInput;

@interface MainScreenPresenter : NSObject <MainScreenModuleInput, MainScreenViewOutput, MainScreenInteractorOutput>

@property (nonatomic, weak) id<MainScreenViewInput> view;
@property (nonatomic, strong) id<MainScreenInteractorInput> interactor;
@property (nonatomic, strong) id<MainScreenRouterInput> router;

@end
