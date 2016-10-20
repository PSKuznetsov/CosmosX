//
//  AsyncNetworkOperation.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 20/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "OperationBase.h"

@protocol CommonClientProtocol;

@interface AsyncNetworkOperation : OperationBase

+ (instancetype)initWithNetworkClient:(id<CommonClientProtocol>)networkClient;

@end
