//
//  APODDataRequestService.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataRequestProtocol.h"

@protocol CommonClientProtocol;
@protocol APODDateFormatterProtocol;
@protocol ResourceMapperProtocol;

@interface APODDataRequestService : NSObject <DataRequestProtocol>

#pragma mark - Dependecies

@property (nonatomic, strong) id<ResourceMapperProtocol> ponsomizer;
@property (nonatomic, strong) id<CommonClientProtocol> networkClient;
@property (nonatomic, strong) id<APODDateFormatterProtocol> dateFormatter;

#pragma mark - DataRequestProtocol

- (void)requestDataFromDate:(NSDate *)date completion:(void(^)(PONSOModel* model, NSError* error))block;

@end
