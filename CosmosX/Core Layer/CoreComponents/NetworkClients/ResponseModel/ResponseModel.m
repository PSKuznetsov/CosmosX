//
//  ResponseModel.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "ResponseModel.h"

@implementation ResponseModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (self) {
        self.responseData = dictionary;
    }
    return self;
}
@end
