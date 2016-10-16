//
//  RequestDateFormatter.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "APODDateFormatterProtocol.h"

@interface RequestDateFormatter : NSObject <APODDateFormatterProtocol>

#pragma mark - APODDateFormatterProtocol
- (NSString *)formateDateForRequest:(NSDate *)date;

@end
