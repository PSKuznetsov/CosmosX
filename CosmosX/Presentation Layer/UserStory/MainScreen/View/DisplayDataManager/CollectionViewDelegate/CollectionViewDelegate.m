//
//  CollectionViewDelegate.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "CollectionViewDelegate.h"
#import "APODPictureEventCollectionViewCell.h"
#import "Constants.h"


@implementation CollectionViewDelegate 

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    APODCollectionViewCell* selectedCell = [collectionView dequeueReusableCellWithReuseIdentifier:kAPODCellReuseIdentifier
//                                                                                     forIndexPath:indexPath];
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
