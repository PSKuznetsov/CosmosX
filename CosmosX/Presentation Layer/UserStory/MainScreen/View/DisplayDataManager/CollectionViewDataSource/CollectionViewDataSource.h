//
//  CollectionViewDataSource.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataProviderProtocol.h"
#import "CollectionViewDataProviderDelegate.h"

@import UIKit;

@interface CollectionViewDataSource : NSObject <NSObject, UICollectionViewDataSource>

#pragma mark - Dependecies

@property (nonatomic, weak) id<CollectionViewDataProviderDelegate> delegate;
@property (nonatomic, strong) id<DataProviderProtocol> dataProvider;

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;

@end
