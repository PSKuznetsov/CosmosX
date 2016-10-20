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
#import "PostCollectionViewFlowLayout.h"

#import "APODVideoEventCollectionViewCell.h"
#import "APODPictureEventCollectionViewCell.h"

#import "Constants.h"

@implementation MainScreenViewController

#pragma mark - Lifecycle Methods

- (void)viewDidLoad {
	[super viewDidLoad];
    
	[self.output didTriggerViewReadyEvent];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.hidden = YES;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

#pragma mark - MainScreenViewInput Methods

- (void)setupInitialState {
    
    self.collectionView.collectionViewLayout = self.flowLayout;
    self.collectionView.delegate   = [self.displayDataManager delegateForCollectionView];
    self.collectionView.dataSource = [self.displayDataManager dataSourceForCollectionVIew];
    
    NSLog(@"Loading...");
}

- (void)updateStateWithEventsLits:(NSArray<PONSOModel *> *)events {
    [self.displayDataManager updateDataSourceWithEvents:events];
    [self.collectionView reloadData];
}

#pragma mark - DisplayDataManagerDelegate

- (void)didTapPostInCollectionViewWithEvent:(PONSOModel *)event {
    [self.output didTriggerEventTapEventWithObject:event];
}

#pragma mark - CollectionViewDataProviderDelegate

- (void)obtainModelForObjectID:(NSInteger)identifier {
    
}

@end
