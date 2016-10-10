//
//  DisplayDataManagerProtocol.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//
@import UIKit;

@protocol DisplayDataManagerProtocol <NSObject>

- (id <UICollectionViewDataSource>)dataSourceForCollectionVIew;
- (id <UICollectionViewDelegate>)delegateForCollectionView;

@end
