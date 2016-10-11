//
//  NetworkClient.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <AFNetworking.h>
#import "NetworkClient.h"

#import "CommonClientProtocol.h"
#import "ResponseModel.h"

static NSString * const baseURL = @"https://api.nasa.gov/planetary/apod";
static NSString * const apiKey  = @"DEMO_KEY";

@interface NetworkClient ()

@end

@implementation NetworkClient

- (void)requestWithType:(SessionType)type
             parameters:(NSDictionary *)param
               successe:(void (^)(ResponseModel* model, NSError* error))block {
    
    if (block) {
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:baseURL parameters:param progress:nil success:^(NSURLSessionTask *task, id responseObject) {
            
            NSLog(@"JSON: %@", responseObject);
            NSDictionary* responseDictionary = (NSDictionary *)responseObject;
            ResponseModel* response = [[ResponseModel alloc] initWithDictionary:responseDictionary];
            block(response, nil);
        } failure:^(NSURLSessionTask *operation, NSError *error) {
            
            NSLog(@"Error: %@", error);
            block(nil, error);
        }];
    }
}


@end
