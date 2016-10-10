//
//  PostCollectionViewFlowLayout.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PostSizeCalculator;

@interface PostCollectionViewFlowLayout : UICollectionViewFlowLayout
@property (nonatomic, strong) PostSizeCalculator *calculator;
@end
