//
//  CoreComponentsAssembly.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "CoreComponentsAssembly.h"

#import "RequestDateFormatter.h"
#import "NetworkClient.h"
#import "PONSOMapper.h"
#import "StoreModelAdapter.h"


@implementation CoreComponentsAssembly

- (RequestDateFormatter *)requestDateFormatter {
    return [TyphoonDefinition withClass:[RequestDateFormatter class]];
}

- (NetworkClient *)networkClient {
    return [TyphoonDefinition withClass:[NetworkClient class]];
}

- (PONSOMapper *)ponsoMapper {
    return [TyphoonDefinition withClass:[PONSOMapper class]];
}

- (StoreModelAdapter *)modelAdapter {
    return [TyphoonDefinition withClass:[StoreModelAdapter class]];
}

@end
