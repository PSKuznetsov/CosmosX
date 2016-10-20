//
//  AsyncNetworkOperation.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 20/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "AsyncNetworkOperation.h"
#import "CommonClientProtocol.h"

#import <EXTScope.h>

@interface AsyncNetworkOperation ()

@property (nonatomic, strong) id<CommonClientProtocol> networkClient;

@end

@implementation AsyncNetworkOperation

#pragma mark - Initialization

- (instancetype)initWithNetworkClient:(id<CommonClientProtocol>)networkClient {
    self = [super init];
    if (self) {
        _networkClient = networkClient;
    }
    return self;
}

+ (instancetype)initWithNetworkClient:(id<CommonClientProtocol>)networkClient {
    return [[[self class] alloc] initWithNetworkClient:networkClient];
}

#pragma mark - Operations

- (void)main {
    //TODO: input data delegate
    
    @weakify(self);
    [self.networkClient requestWithType:GetSessionType parameters:nil
                               successe:^(ResponseModel *model, NSError *error) {
                                   @strongify(self);
                                   if (error) {
                                       
                                   }
                                   if (model) {
                                       
                                   }
                                   [self completeOperationWithData:model error:error];
                                   
        
    }];
}

- (void)completeOperationWithData:(id)data error:(NSError *)error {
    if (data) {
        //TODO: output delegate protocol
    }
    [self complete];
}

@end
