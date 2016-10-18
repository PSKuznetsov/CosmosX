//
//  MainScreenViewController.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainScreenViewInput.h"
#import "DisplayDataManagerDelegate.h"

@protocol MainScreenViewOutput;
@protocol DisplayDataManagerProtocol;

@class PostCollectionViewFlowLayout;

@interface MainScreenViewController : UIViewController <MainScreenViewInput, DisplayDataManagerDelegate>

#pragma mark - Dependencies

@property (nonatomic, strong) id<MainScreenViewOutput> output;
@property (nonatomic, strong) id<DisplayDataManagerProtocol>displayDataManager;
@property (nonatomic, strong) PostCollectionViewFlowLayout* flowLayout;
@property (nonatomic, weak) IBOutlet UICollectionView* collectionView;

@end
