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
    
	[self.output didTriggerViewReadyEventWithTodayDate];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.hidden = YES;
}

#pragma mark - MainScreenViewInput Methods

- (void)setupInitialState {
    
    [self.collectionView registerNib:[UINib nibWithNibName:kVideoEventNib bundle:nil]
          forCellWithReuseIdentifier:kVideoEventCollectionViewCellIdentifier];
    
    [self.collectionView registerNib:[UINib nibWithNibName:kPictureEventNib bundle:nil]
          forCellWithReuseIdentifier:kPictureEventCollectionViewCellIdentifier];
    
    self.collectionView.collectionViewLayout = self.flowLayout;
    self.collectionView.delegate   = [self.displayDataManager delegateForCollectionView];
    self.collectionView.dataSource = [self.displayDataManager dataSourceForCollectionVIew];
    
    
    
    NSLog(@"Loading...");
}

- (void)updateView {
    
    NSLog(@"Reloading View...");
    [self.collectionView reloadData];
}

#pragma mark - DisplayDataManagerDelegate

- (void)didTapPostInCollectionViewWithImageContent:(NSObject *)imageContent {
    
}

#pragma mark - CollectionViewDataProviderDelegate

- (PONSOModel *)obtainModelForObjectID:(NSInteger)identifier {
    
}


@end
