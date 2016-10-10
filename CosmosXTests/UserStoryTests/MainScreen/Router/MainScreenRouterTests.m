//
//  MainScreenRouterTests.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MainScreenRouter.h"

@interface MainScreenRouterTests : XCTestCase

@property (nonatomic, strong) MainScreenRouter *router;

@end

@implementation MainScreenRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[MainScreenRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
