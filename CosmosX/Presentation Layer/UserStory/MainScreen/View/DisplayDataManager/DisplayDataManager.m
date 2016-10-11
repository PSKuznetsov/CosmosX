//
//  DisplayDataManager.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "DisplayDataManager.h"

static NSString *const kAPODCellReuseIdentifier = @"kAPODPictureReuseIdentifier";


@implementation DisplayDataManager

- (id <UICollectionViewDataSource>)dataSourceForCollectionVIew {
    return _dataSource;
}

- (id <UICollectionViewDelegate>)delegateForCollectionView {
    return _delegate;
}

@end
