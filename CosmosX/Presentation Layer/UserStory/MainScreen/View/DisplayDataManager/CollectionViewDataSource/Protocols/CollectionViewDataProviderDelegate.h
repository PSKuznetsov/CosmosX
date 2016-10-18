//
//  CollectionViewDataProviderDelegate.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol CollectionViewDataProviderDelegate <NSObject>
- (PONSOModel *)obtainModelForObjectID:(NSInteger)identifier;
@end
