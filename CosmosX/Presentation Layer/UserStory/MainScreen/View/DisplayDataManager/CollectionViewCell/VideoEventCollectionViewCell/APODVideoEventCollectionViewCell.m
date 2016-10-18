//
//  APODVideoEventCollectionViewCell.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODVideoEventCollectionViewCell.h"

#import "PONSOModel.h"
#import <youtube-ios-player-helper/YTPlayerView.h>

@implementation APODVideoEventCollectionViewCell

- (void)configureCellWithModelObject:(PONSOModel *)object {
    
    self.dateLabel.text  = object.date;
    self.titleLabel.text = object.title;
    
    [self.videoPlayerView loadVideoByURL:object.url
                            startSeconds:0.f
                        suggestedQuality:kYTPlaybackQualityDefault];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
