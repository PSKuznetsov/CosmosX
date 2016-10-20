//
//  OperationBase.h
//  CosmosX
//
//  Created by Paul Kuznetsov on 20/10/2016.
//  Copyright © 2016 Paul Kuznetsov. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 @author Paul Kuznetsov
 
 The base NSOperation class, which provides the asynchronyous capabilities to all of its subclasses.
 */
@interface OperationBase : NSOperation

/**
 @author Paul Kuznetsov
 
 This method is called in a separate thread after operation start. Should be overriden.
 */
- (void)main;

/**
 @author Paul Kuznetsov
 
 This method sets all operation flags to appropriate values. Should be manually called after operation executes.
 */
- (void)complete;

@end
