//
//  PONSOModel.m
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import "PONSOModel.h"

@implementation PONSOModel

- (instancetype)initWithCopyright:(NSString *)copyright
                             date:(NSString *)date
                      explanation:(NSString *)explanation
                            hdurl:(NSString *)hdurl
                        mediaType:(NSString *)mediaType
                   serviceVersion:(NSString *)serviceVersion
                            title:(NSString *)title
                           andURL:(NSString *)url {
    self = [super init];
    if (self) {
        self.copyright          =   copyright;
        self.date               =   date;
        self.explanation        =   explanation;
        self.hdurl              =   hdurl;
        self.media_type         =   mediaType;
        self.service_version    =   serviceVersion;
        self.title              =   title;
        self.url                =   url;
    }
    return self;
}

@end
