//
//  CollectionViewDelegate.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayDataManagerDelegate.h"

@import UIKit;

@interface CollectionViewDelegate : NSObject <NSObject, UICollectionViewDelegate>

@property (nonatomic, weak) id<DisplayDataManagerDelegate> userEventDelegate;

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath;

@end
