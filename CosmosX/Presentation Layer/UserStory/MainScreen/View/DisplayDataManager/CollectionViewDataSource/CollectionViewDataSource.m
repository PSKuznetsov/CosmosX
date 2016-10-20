//
//  CollectionViewDataSource.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//
#import <AFNetworking/AFNetworking.h>
#import <AFNetworking/UIImageView+AFNetworking.h>

#import "CollectionViewDataSource.h"
#import "APODPictureEventCollectionViewCell.h"
#import "APODVideoEventCollectionViewCell.h"

#import "PONSOModel.h"
#import "Constants.h"

@implementation CollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.dataProvider count];
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.delegate obtainModelForObjectID:indexPath.row];
    
    if ([model.media_type isEqualToString:kMediaTypeImage]) {
        
        APODPictureEventCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kPictureEventCollectionViewCellIdentifier
                                                                                             forIndexPath:indexPath];
        [cell configureCellWithModelObject:model];
        
        return cell;
    }
    else if ([model.media_type isEqualToString:kMediaTypeVideo]) {
        
        APODVideoEventCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kVideoEventCollectionViewCellIdentifier
                                                                                           forIndexPath:indexPath];
        [cell configureCellWithModelObject:model];
        return cell;
    }
    return nil;
}

@end
