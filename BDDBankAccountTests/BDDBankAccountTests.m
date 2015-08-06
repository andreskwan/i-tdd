//
//  BDDBankAccountTests.m
//  BDDBankAccountTests
//
//  Created by Andres Kwan on 8/6/15.
//  Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "BankAccount.h"

//@interface BDDBankAccountTestsSpec : XCTestCase

//@end


@interface BankAccount (Test)
    @property(nonatomic) int balance;
@end

SpecBegin(BDDBankAccountTests)
__block BankAccount *account;
describe(@"When the Account Holder deposits $50 the balance...", ^{
    beforeAll(^{
        //Given: the account balance is \$0
        account = [[BankAccount alloc] initWithBalance:0];
    });

    it(@"should be $50", ^{
        [account deposit:50];
        expect(account.balance).to.equal(50);
    });
    
    afterAll(^{
        account = nil;
    });
});
SpecEnd


