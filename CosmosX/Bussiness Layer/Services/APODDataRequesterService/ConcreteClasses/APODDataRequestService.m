//
//  APODDataRequestService.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODDataRequestService.h"

#import "CommonClientProtocol.h"
#import "ResourceMapperProtocol.h"
#import "APODDateFormatterProtocol.h"
#import "PONSOModel.h"

static NSString * const apiKey  = @"DEMO_KEY";


@implementation APODDataRequestService

#pragma mark - DataRequestProtocol

- (void)requestDataFromDate:(NSDate *)date completion:(void(^)(PONSOModel* model, NSError* error))block{
    
    NSString* requestedDate = [self.dateFormatter formateDateForRequest:date];
    NSDictionary* requestParam = @{@"api_key" : apiKey,
                                   @"date" : requestedDate  };
    
    if (block) {
        [self.networkClient requestWithType:GetSessionType
                                 parameters:requestParam
                                   successe:^(ResponseModel *model, NSError *error) {
                                       if (model) {
                                           NSLog(@"INPUT MODEL: %@", model.responseData);
                                           PONSOModel* mappedModel = [[PONSOModel alloc]init];
                                           
                                           mappedModel = [self.ponsomizer mapResource:model.responseData];
                                           
                                           NSLog(@"PONSOMIZED: %@", mappedModel.copyright);
                                           
                                           block(mappedModel, nil);
                                       }
                                       else {
                                           
                                           block(nil, error);
                                       }
                                   }];
    }
    
    
}

@end
