//
//  DataRequestProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol DataRequestProtocol <NSObject>

- (void)requestDataFromDate:(NSDate *)date completion:(void(^)(PONSOModel* model, NSError* error))block;

@end
