//
//  APODVideoEventCollectionViewCellObject.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Nimbus/NimbusCollections.h>

@class PONSOModel;

@interface APODVideoEventCollectionViewCellObject : NSObject <NICollectionViewNibCellObject>

@property (nonatomic, strong, readonly) PONSOModel* event;
@property (nonatomic, strong, readonly) NSString* title;
@property (nonatomic, strong, readonly) NSString* date;
@property (nonatomic, strong, readonly) NSString* videoUrl;

+ (instancetype)objectWithEvent:(PONSOModel *)event;

@end
