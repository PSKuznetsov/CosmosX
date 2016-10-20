//
//  APODVideoEventCollectionViewCell.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODVideoEventCollectionViewCell.h"
#import "APODVideoEventCollectionViewCellObject.h"
#import "APODCollectionViewCellAttributes.h"

#import "PONSOModel.h"
#import <youtube-ios-player-helper/YTPlayerView.h>

@implementation APODVideoEventCollectionViewCell

#pragma mark - <NICollectionViewCell>

- (BOOL)shouldUpdateCellWithObject:(APODVideoEventCollectionViewCellObject *)object {
    
    self.titleLabel.text = object.title;
    self.dateLabel.text  = object.date;
    
    [self.videoPlayerView loadVideoByURL:object.videoUrl
                            startSeconds:0.f
                        suggestedQuality:kYTPlaybackQualityDefault];
    
    return YES;
}

- (void)setupAttributes {
    APODCollectionViewCellAttributes* attributes = [[APODCollectionViewCellAttributes alloc] init];
    [attributes applyAttributeConfigurationOnView:self];
    
}


@end
