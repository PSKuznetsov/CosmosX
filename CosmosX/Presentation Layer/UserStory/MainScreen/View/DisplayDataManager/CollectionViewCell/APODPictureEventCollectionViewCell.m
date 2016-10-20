//
//  APODEventCollectionViewCell.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODPictureEventCollectionViewCell.h"
#import "APODPictureEventCollectionViewCellObject.h"

#import "PONSOModel.h"
#import "EXTScope.h"

#import "APODCollectionViewCellAttributes.h"

#import <SDWebImage/UIImageView+WebCache.h>

static NSString *const kPlaceholderImageName = @"Placeholder";

@implementation APODPictureEventCollectionViewCell

#pragma mark - <NICollectionViewCell>

- (BOOL)shouldUpdateCellWithObject:(APODPictureEventCollectionViewCellObject *)object {
    
    self.titleLabel.text = object.title;
    self.dateLabel.text  = object.date;
    
    NSURL* imageURL = [NSURL URLWithString:object.imageUrl];
    @weakify(self);
    [self.imageView sd_setImageWithURL:imageURL
                      placeholderImage:[UIImage imageNamed:kPlaceholderImageName]
                             completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                                 @strongify(self);
                                 self.imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
                             }];
    [self setupAttributes];
    
    return YES;
}

- (void)setupAttributes {
    APODCollectionViewCellAttributes* attributes = [[APODCollectionViewCellAttributes alloc] init];
    [attributes applyAttributeConfigurationOnView:self];

}

@end
