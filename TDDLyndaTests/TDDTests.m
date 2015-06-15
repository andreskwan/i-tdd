//
//  TDDTests.m
//  TDDTests
//
//  Created by Andres Kwan on 6/10/15.
//  Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BankAccount.h"

@interface TDDTests : XCTestCase
@property (nonatomic, strong) BankAccount *account;
@end

@interface BankAccount (Test)
    @property(nonatomic) int balance;
@end

@implementation TDDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.account = [[BankAccount alloc] initWithBalance:100];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.account = nil;
}

- (void)testDeposits {
    // This is an example of a functional test case.
    [self.account deposit:50];
    XCTAssertEqual([self.account balance], 150,@"pass");
}

- (void)testWithdraw {
    // This is an example of a functional test case.
    [self.account withdraw:30];
    XCTAssertEqual([self.account balance], 70,@"pass");
}

- (void)testWithdrawWithPenalty {
    // This is an example of a functional test case.
    [self.account withdraw:115];
    XCTAssertEqual([self.account balance], -20,@"pass");
}

- (void)testWithdrawValidity {
    XCTAssertFalse([self.account withdraw:1000],@"Must be false, do not allow transaction");
    XCTAssertEqual([self.account balance],100,@"Should not change");

    XCTAssertTrue([self.account withdraw:500],@"This transaction must be allowed");
    XCTAssertEqual([self.account balance],-410,@"%s ", __PRETTY_FUNCTION__);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
