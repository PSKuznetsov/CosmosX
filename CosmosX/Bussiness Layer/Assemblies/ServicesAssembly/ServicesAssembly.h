//
//  ServicesAssembly.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "CoreComponentsAssembly.h"

@class APODDataStoreService;
@class APODDataRequestService;

@interface ServicesAssembly : TyphoonAssembly

@property (nonatomic, strong) CoreComponentsAssembly* coreComponent;

- (APODDataRequestService *)apodRequestService;
- (APODDataStoreService *)dataStoreService;

@end
