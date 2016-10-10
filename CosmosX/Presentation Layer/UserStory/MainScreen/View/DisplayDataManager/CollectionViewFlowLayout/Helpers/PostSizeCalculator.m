//
//  PostSizeCalculator.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 05/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "PostSizeCalculator.h"

static CGFloat const kEventCardFlickVelocity = 0.5f;
static CGFloat const kEventCardLineSpacing   = 24.0f;

static CGFloat const kEventGalleryCollectionViewThresholdWidth = 375.0f;
static CGFloat const kEventCardCompactWidth  = 240.0f;
static CGFloat const kEventCardCompactHeight = 360.0f;
static CGFloat const kEventCardNormalWidth  = 286.0f;
static CGFloat const kEventCardNormalHeight = 426.0f;

@implementation PostSizeCalculator

- (CGSize)calculateEventCardSizeForViewWidth:(CGFloat)viewWidth {
    CGSize itemSize;
    if (viewWidth >= kEventGalleryCollectionViewThresholdWidth) {
        itemSize = CGSizeMake(kEventCardNormalWidth, kEventCardNormalHeight);
    } else {
        itemSize = CGSizeMake(kEventCardCompactWidth, kEventCardCompactHeight);
    }
    return itemSize;
}

- (CGFloat)calculatePageSizeForViewWidth:(CGFloat)viewWidth {
    CGSize itemSize = [self calculateEventCardSizeForViewWidth:viewWidth];
    return itemSize.width + kEventCardLineSpacing;
}

@end
