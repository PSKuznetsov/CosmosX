//
//  MainScreenAssembly.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenAssembly.h"

#import "MainScreenViewController.h"
#import "MainScreenInteractor.h"
#import "MainScreenPresenter.h"
#import "MainScreenRouter.h"
#import "CollectionViewDelegate.h"
#import "CollectionViewDataSource.h"
#import "DisplayDataManager.h"
#import "PostCollectionViewFlowLayout.h"
#import "PostSizeCalculator.h"
#import "CollectionViewDataProviderDelegate.h"
#import "APODEventsCellObjectFactory.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MainScreenAssembly

- (MainScreenViewController *)viewMainScreenModule {
    return [TyphoonDefinition withClass:[MainScreenViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterMainScreenModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterMainScreenModule]];
                              [definition injectProperty:@selector(displayDataManager)
                                                    with:[self displayDataManager]];
                              [definition injectProperty:@selector(flowLayout)
                                                    with:[self collectionViewFlowLayout]];
                          }];
}

- (MainScreenInteractor *)interactorMainScreenModule {
    return [TyphoonDefinition withClass:[MainScreenInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterMainScreenModule]];
                              [definition injectProperty:@selector(dataProvider)
                                                    with:[self.services dataProviderService]];
                          }];
}

- (MainScreenPresenter *)presenterMainScreenModule {
    return [TyphoonDefinition withClass:[MainScreenPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewMainScreenModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorMainScreenModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerMainScreenModule]];
                          }];
}

- (MainScreenRouter *)routerMainScreenModule {
    return [TyphoonDefinition withClass:[MainScreenRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewMainScreenModule]];
                          }];
}

- (DisplayDataManager *)displayDataManager {
    return [TyphoonDefinition withClass:[DisplayDataManager class]
            configuration:^(TyphoonDefinition *definition) {
                [definition useInitializer:@selector(initWithCellObjectFactory:delegate:) parameters:^(TyphoonMethod *initializer) {
                    [initializer injectParameterWith:[self cellObjectFactory]];
                    [initializer injectParameterWith:[self viewMainScreenModule]];
                }];
            }];
}

- (CollectionViewDelegate *)collectionViewDelegate {
    return [TyphoonDefinition withClass:[CollectionViewDelegate class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(userEventDelegate)
                                      with:[self viewMainScreenModule]];
            }];
}

- (CollectionViewDataSource *)collectionViewDataSource {
    return [TyphoonDefinition withClass:[CollectionViewDataSource class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(delegate)
                                      with:[self viewMainScreenModule]];
                [definition injectProperty:@selector(dataProvider)
                                      with:[self.services dataProviderService]];
            }];
}

- (PostCollectionViewFlowLayout *)collectionViewFlowLayout {
    return [TyphoonDefinition withClass:[PostCollectionViewFlowLayout class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(calculator)
                                      with:[self postSizeCalculator]];
            }];
}

- (PostSizeCalculator *)postSizeCalculator {
    return [TyphoonDefinition withClass:[PostSizeCalculator class]];
}

- (APODEventsCellObjectFactory *)cellObjectFactory {
    return [TyphoonDefinition withClass:[APODEventsCellObjectFactory class]];
}

@end
