//
//  APODDataRequestService.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataRequestProtocol;
@protocol CommonClientProtocol;
@protocol APODDateFormatterProtocol;

@interface APODDataRequestService : NSObject <DataRequestProtocol>

#pragma mark - Dependecies

@property (nonatomic, strong) id<CommonClientProtocol> networkClient;
@property (nonatomic, strong) id<APODDateFormatterProtocol> dateFormatter;

#pragma mark - DataRequestProtocol

- (void)requestDataFromDate:(NSDate *)date;

@end
