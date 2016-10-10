//
//  MainScreenPresenterTests.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MainScreenPresenter.h"

#import "MainScreenViewInput.h"
#import "MainScreenInteractorInput.h"
#import "MainScreenRouterInput.h"

@interface MainScreenPresenterTests : XCTestCase

@property (nonatomic, strong) MainScreenPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MainScreenPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[MainScreenPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MainScreenInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MainScreenRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MainScreenViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MainScreenModuleInput

#pragma mark - Тестирование методов MainScreenViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов MainScreenInteractorOutput

@end
