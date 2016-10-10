//
//  MainScreenViewControllerTests.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MainScreenViewController.h"

#import "MainScreenViewOutput.h"

@interface MainScreenViewControllerTests : XCTestCase

@property (nonatomic, strong) MainScreenViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MainScreenViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MainScreenViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MainScreenViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов MainScreenViewInput

@end
