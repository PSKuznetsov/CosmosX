//
//  MainScreenInteractor.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenInteractorInput.h"
#import "DataProviderProtocol.h"
#import "DataRequestProtocol.h"

@protocol MainScreenInteractorOutput;

@interface MainScreenInteractor : NSObject <MainScreenInteractorInput>

@property (nonatomic, weak) id<MainScreenInteractorOutput> output;

#pragma mark - Dependecies

@property (nonatomic, strong) id<DataProviderProtocol> dataProvider;

@end
