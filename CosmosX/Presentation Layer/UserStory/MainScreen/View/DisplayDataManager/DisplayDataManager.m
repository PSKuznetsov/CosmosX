//
//  DisplayDataManager.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "DisplayDataManager.h"

#import "APODEventsCellObjectFactory.h"
#import "APODPictureEventCollectionViewCellObject.h"
#import "APODVideoEventCollectionViewCellObject.h"
#import "DisplayDataManagerDelegate.h"
#import "PONSOModel.h"
#import <EXTScope.h>

#import <Nimbus/NimbusCollections.h>

@interface DisplayDataManager () <UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NIMutableCollectionViewModel *collectionModel;
@property (nonatomic, strong) NICollectionViewActions *collectionActions;
@property (nonatomic, strong) APODEventsCellObjectFactory *cellObjectFactory;
@property (nonatomic, weak) id<DisplayDataManagerDelegate> delegate;

@property (nonatomic, strong) NSArray *events;

@end

@implementation DisplayDataManager

- (instancetype)initWithCellObjectFactory:(APODEventsCellObjectFactory *)factory
                                 delegate:(id<DisplayDataManagerDelegate>)delegate {
    self = [super init];
    if (self) {
        _cellObjectFactory = factory;
        _delegate = delegate;
    }
    return self;
    
}

- (id <UICollectionViewDataSource>)dataSourceForCollectionVIew {
    
    self.collectionModel = [[NIMutableCollectionViewModel alloc] initWithSectionedArray:@[@""]
                                                                               delegate:(id)[NICollectionViewCellFactory class]];
    return self.collectionModel;
}

- (id <UICollectionViewDelegate>)delegateForCollectionView {
    if (!self.collectionActions) {
        [self setupCollectionActions];
    }
    return self;
}

- (void)updateDataSourceWithEvents:(NSArray *)events {
    
    self.events = events;
    [self.collectionModel removeSectionAtIndex:0];
    [self.collectionModel addSectionWithTitle:@""];
    
    NSArray *cellObjects = [self.cellObjectFactory createCellObjectsWithEvents:events];
    [self.collectionModel addObjectsFromArray:cellObjects];
}

#pragma mark - <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.collectionActions collectionView:collectionView
                         didSelectItemAtIndexPath:indexPath];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //[self.animator animateColorChangeWithScrollOffset:scrollView.contentOffset.x];
}

#pragma mark - Private methods

- (void)setupCollectionActions {
    
    self.collectionActions = [[NICollectionViewActions alloc] initWithTarget:self];
    
    @weakify(self);
    NIActionBlock pictureEventTapActionBlock = ^BOOL(APODPictureEventCollectionViewCellObject *object,
                                                     id target,
                                                     NSIndexPath *indexPath) {
        @strongify(self);
        [self.delegate didTapPostInCollectionViewWithEvent:object.event];
        return YES;
    };
    
    [self.collectionActions attachToClass:[APODPictureEventCollectionViewCellObject class]
                                 tapBlock:pictureEventTapActionBlock];
    
    NIActionBlock videoEventTapActionBlock = ^BOOL(APODVideoEventCollectionViewCellObject *object, id target, NSIndexPath *indexPath) {
        @strongify(self);
        [self.delegate didTapPostInCollectionViewWithEvent:object.event];
        return YES;
    };
    
    [self.collectionActions attachToClass:[APODVideoEventCollectionViewCellObject class]
                                 tapBlock:videoEventTapActionBlock];
}

@end
