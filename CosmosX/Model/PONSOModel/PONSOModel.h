//
//  PONSOModel.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PONSOModel : NSObject

@property (nonatomic, strong) NSString* copyright;
@property (nonatomic, strong) NSString* date;
@property (nonatomic, strong) NSString* explanation;
@property (nonatomic, strong) NSString* hdurl;
@property (nonatomic, strong) NSString* media_type;
@property (nonatomic, strong) NSString* service_version;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* url;



- (instancetype)initWithCopyright:(NSString *)copyright
                             date:(NSString *)date
                      explanation:(NSString *)explanation
                            hdurl:(NSString *)hdurl
                        mediaType:(NSString *)mediaType
                   serviceVersion:(NSString *)serviceVersion
                            title:(NSString *)title
                           andURL:(NSString *)url;

@end
