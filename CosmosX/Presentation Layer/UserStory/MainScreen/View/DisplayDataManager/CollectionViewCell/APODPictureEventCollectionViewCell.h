//
//  APODEventCollectionViewCell.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PONSOModel;

@interface APODPictureEventCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;

- (void)configureCellWithModelObject:(PONSOModel *)object;

@end
