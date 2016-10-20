//
//  APODCollectionViewCellAttributes.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODCollectionViewCellAttributes.h"

#import <UIKit/UIKit.h>

static CGFloat const kShadowOffset = 5.0f;
static CGFloat const kShadowRadius = 65.0f;
static CGFloat const kShadowOpacity = 0.2f;

@implementation APODCollectionViewCellAttributes

- (void)applyAttributeConfigurationOnView:(UIView *)view {
    
    view.layer.shadowColor = [UIColor blackColor].CGColor;
    view.layer.shadowOffset = CGSizeMake(0, kShadowOffset);
    view.layer.shadowRadius = kShadowRadius;
    view.layer.shadowOpacity = kShadowOpacity;
    view.layer.masksToBounds = NO;
    view.layer.shadowPath = [UIBezierPath bezierPathWithRect:view.bounds].CGPath;
}
@end
