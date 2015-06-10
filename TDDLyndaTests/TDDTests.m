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

@end

@interface BankAccount (Test)
    @property(nonatomic) int balance;
@end

@implementation TDDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDeposits {
    // This is an example of a functional test case.
    BankAccount * account = [[BankAccount alloc]init];
    [account deposit:50];
    XCTAssertEqual([account balance], 50,@"pass");
}

- (void)testWithdraw {
    // This is an example of a functional test case.
    BankAccount * account = [[BankAccount alloc] initWithBalance:50];
    [account withdraw:30];
    XCTAssertEqual([account balance], 20,@"pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
