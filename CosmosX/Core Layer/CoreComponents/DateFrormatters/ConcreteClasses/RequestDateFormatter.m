//
//  RequestDateFormatter.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "RequestDateFormatter.h"

@interface RequestDateFormatter ()
@property (nonatomic, strong) NSDateFormatter* formatter;
@end

static NSString *const kOriginDate = @"1995-06-16";

@implementation RequestDateFormatter

#pragma mark - APODDateFormatterProtocol

- (NSString *)formateDateForRequest:(NSDate *)date {
    
    self.formatter = [[NSDateFormatter alloc]init];
    [self.formatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/New_York"]];
    [self.formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString* dateForRequest = [self.formatter stringFromDate:date];
    return dateForRequest;
}

- (NSDate *)formatDateForTimeZone:(NSDate *)date {
    
    NSString* formattedDateString = [self formateDateForRequest:date];
    NSDate* formattedDate = [self.formatter dateFromString:formattedDateString];
    
    return formattedDate;
}

- (NSDate *)originDate {
    
    NSDate* formattedDate = [self.formatter dateFromString:kOriginDate];
    
    return formattedDate;
}

- (NSDate *)dateForIndex:(NSInteger)index {
    NSDate* currentDate = [self formatDateForTimeZone:[NSDate date]];
    NSDate *pastDate = [[NSCalendar currentCalendar] dateByAddingUnit:NSCalendarUnitDay
                                                                    value:-index
                                                                   toDate:currentDate
                                                                  options:0];
    return pastDate;
}

@end
