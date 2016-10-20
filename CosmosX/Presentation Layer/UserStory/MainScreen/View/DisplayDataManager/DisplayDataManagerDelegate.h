//
//  DisplayDataManagerDelegate.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 05/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PONSOModel;

@protocol DisplayDataManagerDelegate <NSObject>
- (void)didTapPostInCollectionViewWithEvent:(PONSOModel *)event;
@end
