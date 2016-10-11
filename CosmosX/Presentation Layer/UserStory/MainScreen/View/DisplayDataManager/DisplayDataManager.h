//
//  DisplayDataManager.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayDataManagerProtocol.h"
#import "CollectionViewDelegate.h"
#import "CollectionViewDataSource.h"


@import UIKit;

@interface DisplayDataManager : NSObject <DisplayDataManagerProtocol>

#pragma mark - Dependencies

@property (nonatomic, strong) CollectionViewDelegate* delegate;
@property (nonatomic, strong) CollectionViewDataSource* dataSource;

#pragma mark - Instance methods

- (id <UICollectionViewDataSource>)dataSourceForCollectionVIew;
- (id <UICollectionViewDelegate>)delegateForCollectionView;

@end
