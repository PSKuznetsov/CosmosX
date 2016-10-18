//
//  MainScreenViewController.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import "MainScreenViewController.h"

#import "MainScreenViewOutput.h"
#import "DisplayDataManagerProtocol.h"
#import "DisplayDataManagerDelegate.h"

@implementation MainScreenViewController

#pragma mark - Lifecycle Methods

- (void)viewDidLoad {
	[super viewDidLoad];
    
    [self.collectionView setDelegate:[self.displayDataManager delegateForCollectionView]];
    [self.collectionView setDataSource:[self.displayDataManager dataSourceForCollectionVIew]];
    
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - MainScreenViewInput Methods

- (void)setupInitialState {
}

- (void)updateView {
    [self.collectionView reloadData];
}

#pragma mark - DisplayDataManagerDelegate

- (void)didTapPostInCollectionViewWithImageContent:(NSObject *)imageContent {
    
}

@end
