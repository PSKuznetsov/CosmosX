//
//  APODEventCollectionViewCell.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 18/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Nimbus/NimbusCollections.h>

@class PONSOModel;

@interface APODPictureEventCollectionViewCell : UICollectionViewCell <NICollectionViewCell>

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;

@end
