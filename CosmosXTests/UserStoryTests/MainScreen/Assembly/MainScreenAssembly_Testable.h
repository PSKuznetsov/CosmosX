//
//  MainScreenAssembly_Testable.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenAssembly.h"

@class MainScreenViewController;
@class MainScreenInteractor;
@class MainScreenPresenter;
@class MainScreenRouter;

@interface MainScreenAssembly ()

- (MainScreenViewController *)viewMainScreenModule;
- (MainScreenPresenter *)presenterMainScreenModule;
- (MainScreenInteractor *)interactorMainScreenModule;
- (MainScreenRouter *)routerMainScreenModule;

@end
