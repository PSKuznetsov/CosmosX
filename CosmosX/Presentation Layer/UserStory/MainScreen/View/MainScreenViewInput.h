//
//  MainScreenViewInput.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol MainScreenViewInput <NSObject>

/**
 @author Paul

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;
- (void)updateStateWithEventsLits:(NSArray<PONSOModel *> *)events;

@end
