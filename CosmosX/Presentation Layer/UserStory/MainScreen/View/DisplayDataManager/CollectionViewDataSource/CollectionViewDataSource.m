//
//  CollectionViewDataSource.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "CollectionViewDataSource.h"
#import "APODCollectionViewCell.h"

static NSString *const kCollectionViewCellIdentifier = @"kAPODPictureReuseIdentifier";

@implementation CollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    APODCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellIdentifier
                                                                              forIndexPath:indexPath];
    
    
    return cell;
}

@end
