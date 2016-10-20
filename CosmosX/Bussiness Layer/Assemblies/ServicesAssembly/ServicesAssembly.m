//
//  ServicesAssembly.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "ServicesAssembly.h"

#import "APODDataRequestService.h"
#import "APODDataStoreService.h"
#import "DataProvider.h"

@implementation ServicesAssembly

- (APODDataRequestService *)apodRequestService {
    return [TyphoonDefinition withClass:[APODDataRequestService class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(ponsomizer)
                                      with:[self.coreComponent ponsoMapper]];
                [definition injectProperty:@selector(networkClient)
                                      with:[self.coreComponent networkClient]];
                [definition injectProperty:@selector(dateFormatter)
                                      with:[self.coreComponent requestDateFormatter]];
            }];
}

- (APODDataStoreService *)dataStoreService {
    return [TyphoonDefinition withClass:[APODDataStoreService class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(adapter)
                                      with:[self.coreComponent modelAdapter]];
                [definition injectProperty:@selector(dateFormatter)
                                      with:[self.coreComponent requestDateFormatter]];
            }];
}

- (DataProvider *)dataProviderService {
    return [TyphoonDefinition withClass:[DataProvider class]
            configuration:^(TyphoonDefinition *definition) {
                [definition injectProperty:@selector(dataStore)
                                      with:[self dataStoreService]];
                [definition injectProperty:@selector(networkDataRequest)
                                      with:[self apodRequestService]];
            }];
}

@end
