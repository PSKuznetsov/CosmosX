//
//  MainScreenRouter.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MainScreenRouter : NSObject <MainScreenRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
