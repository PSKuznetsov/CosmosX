//
//  PostSizeCalculator.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 05/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface PostSizeCalculator : NSObject


- (CGSize)calculateEventCardSizeForViewWidth:(CGFloat)viewWidth;

- (CGFloat)calculatePageSizeForViewWidth:(CGFloat)viewWidth;

@end
