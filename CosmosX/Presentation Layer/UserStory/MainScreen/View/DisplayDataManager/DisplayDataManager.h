//
//  DisplayDataManager.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DisplayDataManagerProtocol.h"

@class PONSOModel;
@class APODEventsCellObjectFactory;
@protocol DisplayDataManagerDelegate;


@interface DisplayDataManager : NSObject <DisplayDataManagerProtocol>

#pragma mark - Instance methods

- (instancetype)initWithCellObjectFactory:(APODEventsCellObjectFactory *)factory
                                 delegate:(id<DisplayDataManagerDelegate>)delegate;

- (id <UICollectionViewDataSource>)dataSourceForCollectionVIew;
- (id <UICollectionViewDelegate>)delegateForCollectionView;
- (void)updateDataSourceWithEvents:(NSArray *)events;

@end
