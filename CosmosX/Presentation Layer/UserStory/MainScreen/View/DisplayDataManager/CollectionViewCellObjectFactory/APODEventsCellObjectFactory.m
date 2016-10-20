//
//  APODEventsCellObjectFactory.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODEventsCellObjectFactory.h"

#import "APODPictureEventCollectionViewCellObject.h"
#import "APODVideoEventCollectionViewCellObject.h"

#import "PONSOModel.h"
#import "Constants.h"

@implementation APODEventsCellObjectFactory

- (NSArray *)createCellObjectsWithEvents:(NSArray<PONSOModel *> *)events {
    NSMutableArray *cellObjects = [NSMutableArray new];
    for (PONSOModel *event in events) {
        if ([event.media_type isEqualToString:kMediaTypeImage]) {
            APODPictureEventCollectionViewCellObject* pictureCellObject = [self cellObjectWithEvent:event];
            [cellObjects addObject:pictureCellObject];
        }
        else if ([event.media_type isEqualToString:kMediaTypeVideo]) {
            APODVideoEventCollectionViewCellObject* videoCellObject = [self cellObjectWithEvent:event];
            [cellObjects addObject:videoCellObject];
        }
    }
    return [cellObjects copy];
}

- (id<NICollectionViewNibCellObject>)cellObjectWithEvent:(PONSOModel *)event {
    
    if ([event.media_type isEqualToString:kMediaTypeImage]) {
        APODPictureEventCollectionViewCellObject* pictureCellObject = [APODPictureEventCollectionViewCellObject objectWithEvent:event];
        return pictureCellObject;
    }
    else if ([event.media_type isEqualToString:kMediaTypeVideo]) {
        APODVideoEventCollectionViewCellObject* videoCellObject = [APODVideoEventCollectionViewCellObject objectWithEvent:event];
        return videoCellObject;
    }
    return nil;
}

@end
