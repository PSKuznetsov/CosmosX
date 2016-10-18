//
//  APODDateFormatterProtocol.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APODDateFormatterProtocol <NSObject>
- (NSString *)formateDateForRequest:(NSDate *)date;
- (NSDate *)formatDateForTimeZone:(NSDate *)date;
- (NSDate *)originDate;
- (NSDate *)dateForIndex:(NSInteger)index;

@end
