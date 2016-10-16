//
//  StoreModelAdapter.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelAdapterProtocol.h"



@interface StoreModelAdapter : NSObject <ModelAdapterProtocol>

- (id)adaptModel:(id)model forType:(ModelType)type;

@end
