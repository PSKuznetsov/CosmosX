//
//  DisplayDataManagerDelegate.h
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 05/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@protocol DisplayDataManagerDelegate <NSObject>
- (void)didTapPostInCollectionViewWithImageContent:(NSObject *)imageContent;
@end
