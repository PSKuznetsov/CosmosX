//
//  APODData.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 11/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Realm/Realm.h>

@interface APODData : RLMObject

@property NSString* copyright;
@property NSString* date;
@property NSString* explanation;
@property NSString* hdurl;
@property NSString* media_type;
@property NSString* service_version;
@property NSString* title;
@property NSString* url;

@end
