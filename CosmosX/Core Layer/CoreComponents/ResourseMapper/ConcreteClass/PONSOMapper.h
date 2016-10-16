//
//  PONSOMapper.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ResourceMapperProtocol.h"

@interface PONSOMapper : NSObject <ResourceMapperProtocol>

- (id)mapResource:(NSDictionary *)dictionary;

@end
