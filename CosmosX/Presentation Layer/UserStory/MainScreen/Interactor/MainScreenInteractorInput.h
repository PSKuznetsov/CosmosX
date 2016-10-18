//
//  MainScreenInteractorInput.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PONSOModel;

@protocol MainScreenInteractorInput <NSObject>

- (void)initialSetup;
- (PONSOModel *)retrieveDataForObjectID:(NSInteger)identifier;

@end
