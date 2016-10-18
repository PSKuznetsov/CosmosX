//
//  ResourceMapperProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol ResourceMapperProtocol <NSObject>

- (PONSOModel *)mapResource:(NSDictionary *)dictionary;

@end
