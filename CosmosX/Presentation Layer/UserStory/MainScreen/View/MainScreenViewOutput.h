//
//  MainScreenViewOutput.h
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MainScreenViewOutput <NSObject>

/**
 @author Paul

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
