//
//  ResponseModel.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResponseModel : NSObject

@property (nonatomic, strong) NSDictionary* responseData;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
