//
//  APODPictureEventCollectionViewCellObject.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 19/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODPictureEventCollectionViewCellObject.h"
#import "APODPictureEventCollectionViewCell.h"
#import "PONSOModel.h"
#import "Constants.h"

@interface APODPictureEventCollectionViewCellObject ()

@property (nonatomic, strong, readwrite) PONSOModel* event;
@property (nonatomic, strong, readwrite) NSString* title;
@property (nonatomic, strong, readwrite) NSString* date;
@property (nonatomic, strong, readwrite) NSString* imageUrl;

@end

@implementation APODPictureEventCollectionViewCellObject

- (instancetype)initWithEvent:(PONSOModel *)event {
    self = [super init];
    if (self) {
        _event = event;
        _title = event.title;
        _imageUrl = event.url;
        _date = event.date;
    }
    return self;
}

+ (instancetype)objectWithEvent:(PONSOModel *)event {
    return [[self alloc] initWithEvent:event];
}

#pragma mark - <NICollectionViewNibCellObject>

- (UINib *)collectionViewCellNib {
    return [UINib nibWithNibName:NSStringFromClass([APODPictureEventCollectionViewCell class])
                          bundle:nil];
}

- (Class)collectionViewCellClass {
    return [APODPictureEventCollectionViewCell class];
}

@end
