//
//  MainScreenAssembly.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "ServicesAssembly.h"

/**
 @author Paul

 MainScreen module
 */
@interface MainScreenAssembly : TyphoonAssembly
@property (nonatomic, strong) ServicesAssembly* services;
@end
