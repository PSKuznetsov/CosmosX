//
//  CommonClientProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NetworkSessionType.h"
#import "ResponseModel.h"

@protocol CommonClientProtocol <NSObject>

- (void)requestWithType:(SessionType)type parameters:(NSDictionary *)param successe:(void (^)(ResponseModel* model, NSError* error))block;

@end
