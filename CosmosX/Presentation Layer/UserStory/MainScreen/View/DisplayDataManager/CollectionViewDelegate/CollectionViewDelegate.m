//
//  CollectionViewDelegate.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "CollectionViewDelegate.h"
#import "PostCollectionViewCell.h"

static NSString *const kCollectionViewCellIdentifier = @"postCell";


@implementation CollectionViewDelegate 

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    PostCollectionViewCell* selectedCell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellIdentifier
                                                                                     forIndexPath:indexPath];
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
