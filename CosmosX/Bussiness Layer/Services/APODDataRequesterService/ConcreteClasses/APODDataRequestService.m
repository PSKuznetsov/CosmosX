//
//  APODDataRequestService.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "APODDataRequestService.h"
#import "DataRequestProtocol.h"

#import "CommonClientProtocol.h"
#import "APODDateFormatterProtocol.h"


@implementation APODDataRequestService

#pragma mark - DataRequestProtocol

- (void)requestDataFromDate:(NSDate *)date {
    
    NSString* requestedDate = [self.dateFormatter formateDateForRequest:date];
    NSDictionary* requestParam = @{@"api_key" : @"DEMO_KEY",
                                   @"date" : requestedDate  };
    [self.networkClient requestWithType:GetSessionType parameters:requestParam successe:^(ResponseModel *model, NSError *error) {
        
    }];
}

@end
