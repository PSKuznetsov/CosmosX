//
//  RequestDateFormatter.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "RequestDateFormatter.h"

@implementation RequestDateFormatter

#pragma mark - APODDateFormatterProtocol

- (NSString *)formateDateForRequest:(NSDate *)date {
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-DD"];
    
    NSString* dateForRequest = [formatter stringFromDate:date];
    
    return dateForRequest;
}

@end
