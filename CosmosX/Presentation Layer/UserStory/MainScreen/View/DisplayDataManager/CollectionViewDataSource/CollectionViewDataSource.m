//
//  CollectionViewDataSource.m
//  VIPERDemo
//
//  Created by Paul Kuznetsov on 04/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//
#import <AFNetworking/AFNetworking.h>
#import <AFNetworking/UIImageView+AFNetworking.h>

#import "CollectionViewDataSource.h"
#import "APODCollectionViewCell.h"
#import "PONSOModel.h"

static NSString *const kCollectionViewCellIdentifier = @"kAPODPictureReuseIdentifier";

@implementation CollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.dataStore countOfModels];
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    APODCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellIdentifier
                                                                              forIndexPath:indexPath];
    
    PONSOModel* model = [self.dataStore retrieveModelForID:indexPath.row];
    NSURL* imageURL = [NSURL URLWithString:model.url];
    NSLog(@"Image URL: %@", imageURL);
    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageURL
                                                  cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                              timeoutInterval:60];
    
    [cell.imageView setImageWithURLRequest:imageRequest
                          placeholderImage:[UIImage imageNamed:@"Placeholder"]
                                   success:nil
                                   failure:nil];
    
    cell.podTitle.text = model.title;
    NSLog(@"Title: %@", cell.podTitle.text);
    NSLog(@"Hello!");
    return cell;
}

@end
