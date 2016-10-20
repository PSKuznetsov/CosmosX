//
//  APODVideoEventCollectionViewCellObject.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODVideoEventCollectionViewCellObject.h"
#import "APODVideoEventCollectionViewCell.h"
#import "PONSOModel.h"

@implementation APODVideoEventCollectionViewCellObject

- (instancetype)initWithEvent:(PONSOModel *)event {
    self = [super init];
    if (self) {
        _event = event;
        _title = event.title;
        _videoUrl = event.url;
        _date = event.date;
    }
    return self;
}

+ (instancetype)objectWithEvent:(PONSOModel *)event {
    return [[self alloc] initWithEvent:event];
}

#pragma mark - <NICollectionViewNibCellObject>

- (UINib *)collectionViewCellNib {
    return [UINib nibWithNibName:NSStringFromClass([APODVideoEventCollectionViewCell class])
                          bundle:nil];
}

- (Class)collectionViewCellClass {
    return [APODVideoEventCollectionViewCell class];
}
@end
