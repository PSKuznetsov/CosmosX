//
//  NetworkSessionType.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 10/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

static NSString * const GET     =   @"GET";
static NSString * const POST    =   @"POST";
static NSString * const PUT     =   @"PUT";
static NSString * const DELETE  =   @"DELETE";

typedef NS_ENUM(NSUInteger, SessionType) {
    GetSessionType,
    PostSessionType,
    DeleteSessionType,
};
