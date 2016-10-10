//
//  MainScreenModuleInput.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol MainScreenModuleInput <RamblerViperModuleInput>

/**
 @author Paul

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
