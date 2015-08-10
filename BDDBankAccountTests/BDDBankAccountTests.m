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

@interface BankAccount (Test)
    @property(nonatomic) int balance;
@end

SpecBegin(BDDBankAccountTests)

describe(@"BankAccount", ^{
    __block BankAccount *bankAccount;
    afterEach(^{
        bankAccount = nil;
    });
    xdescribe(@"init", ^{
        it(@"should sets initial balance to zero", ^{
            bankAccount = [[BankAccount alloc] init];
            expect(bankAccount.balance).to.equal(0);
        });
    });
    xdescribe(@"initWithBalance", ^{
        __block int initialBalance;
        it(@"should sets initial balance to a value", ^{
            initialBalance = 100;
            bankAccount = [[BankAccount alloc ]initWithBalance:initialBalance];
            expect(bankAccount.balance).to.equal(initialBalance);
        });
    });
    xdescribe(@"deposit", ^{
        __block int amount  = 50 + 80 + 160 + 2000;
        beforeAll(^{
            //preconditions
            bankAccount = [[BankAccount alloc] init];
        });
        it(@"should increases balance after subsequent deposits", ^{
            [bankAccount deposit:amount];
            expect(bankAccount.balance).to.equal(amount);
        });
    });
    describe(@"withdraw", ^{
        __block int amount;
        __block int initBalance;
        context(@"when sufficient funds", ^{
            beforeEach(^{
                //preconditions
                initBalance = 100;
                amount = 10000000;
                bankAccount = [[BankAccount alloc] initWithBalance:initBalance];
            });
            it(@"decreases balance by amount of withdrawal", ^{
                [bankAccount withdraw:amount];
                expect(bankAccount.balance).to.equal(initBalance - amount);
            });
        });
    });
    afterAll(^{
        bankAccount = nil;
    });
});
SpecEnd




