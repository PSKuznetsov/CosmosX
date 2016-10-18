//
//  APODEventCollectionViewCell.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODPictureEventCollectionViewCell.h"
#import "PONSOModel.h"

#import <SDWebImage/UIImageView+WebCache.h>

static NSString *const kPlaceholderImageName = @"Placeholder";

@implementation APODPictureEventCollectionViewCell

- (void)configureCellWithModelObject:(PONSOModel *)object {
    
    self.titleLabel.text = object.title;
    self.dateLabel.text  = object.date;
    
    NSURL* imageURL = [NSURL URLWithString:object.url];
    
//    __weak typeof(self) weakSelf = self;
//    [self.imageView sd_setImageWithURL:imageURL
//                      placeholderImage:[UIImage imageNamed:kPlaceholderImageName]
//                             completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//                                 NSLog(@"ERROR: %@", error.localizedDescription);
//                                 __strong typeof(self) strongSelf = weakSelf;
//                                 strongSelf.imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
//        
//    }];
    [self.imageView sd_setImageWithURL:imageURL
                      placeholderImage:[UIImage imageNamed:kPlaceholderImageName]];
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    [self.imageView sd_cancelCurrentImageLoad];
    self.imageView.image = nil;
    self.imageView.image = [UIImage imageNamed:kPlaceholderImageName];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
