//
//  PostCollectionViewFlowLayout.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "PostCollectionViewFlowLayout.h"
#import "PostSizeCalculator.h"

static CGFloat const kEventCardFlickVelocity = 0.5f;
static CGFloat const kEventCardLineSpacing = 24.0f;

@implementation PostCollectionViewFlowLayout

- (void)prepareLayout {
    [super prepareLayout];
    
    self.itemSize = [self.calculator calculateEventCardSizeForViewWidth:self.collectionView.frame.size.width];
    
    self.minimumLineSpacing = kEventCardLineSpacing;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    CGFloat horizontalInset = (self.collectionView.frame.size.width - self.itemSize.width) / 2;
    self.sectionInset = UIEdgeInsetsMake(0.0,
                                         horizontalInset,
                                         0.0,
                                         horizontalInset);
}

- (CGFloat)pageWidth {
    return [self.calculator calculatePageSizeForViewWidth:self.collectionView.frame.size.width];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset
                                 withScrollingVelocity:(CGPoint)velocity {
    CGFloat rawPageValue = self.collectionView.contentOffset.x / self.pageWidth;
    CGFloat currentPage = (velocity.x > 0.0) ? floor(rawPageValue) : ceil(rawPageValue);
    CGFloat nextPage = (velocity.x > 0.0) ? ceil(rawPageValue) : floor(rawPageValue);
    
    BOOL pannedLessThanAPage = fabs(1 + currentPage - rawPageValue) > 0.5;
    BOOL flicked = fabs(velocity.x) > [self flickVelocity];
    if (pannedLessThanAPage && flicked) {
        proposedContentOffset.x = nextPage * self.pageWidth;
    } else {
        proposedContentOffset.x = round(rawPageValue) * self.pageWidth;
    }
    
    return proposedContentOffset;
}

- (CGFloat)flickVelocity {
    return kEventCardFlickVelocity;
}

@end
