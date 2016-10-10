//
//  MainScreenInteractorTests.m
//  CosmosX
//
//  Created by Paul on 10/10/2016.
//  Copyright © 2016 Raccoon&Fox. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MainScreenInteractor.h"

#import "MainScreenInteractorOutput.h"

@interface MainScreenInteractorTests : XCTestCase

@property (nonatomic, strong) MainScreenInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MainScreenInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MainScreenInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MainScreenInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MainScreenInteractorInput

@end
