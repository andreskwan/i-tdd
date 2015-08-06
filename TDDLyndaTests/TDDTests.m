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

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDeposit
{
    self.account = [[BankAccount alloc] initWithBalance:0];
    [self.account deposit:50];
    XCTAssertEqual([self.account balance], 50,@"Balance after deposit is not right");
    [self.account deposit:30];
    XCTAssertEqual([self.account balance], 80,@"Balance after deposit is not right");
}

@end
