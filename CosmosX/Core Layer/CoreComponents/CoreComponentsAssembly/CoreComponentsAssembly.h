//
//  CoreComponentsAssembly.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@class RequestDateFormatter;
@class NetworkClient;
@class PONSOMapper;
@class StoreModelAdapter;


@interface CoreComponentsAssembly : TyphoonAssembly

- (RequestDateFormatter *)requestDateFormatter;
- (NetworkClient *)networkClient;
- (PONSOMapper *)ponsoMapper;
- (StoreModelAdapter *)modelAdapter;

@end
