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

describe(@"BankAccount", ^{
    __block BankAccount *bankAccount;
    describe(@"initialization", ^{
        context(@"with initial value", ^{
            __block int initialBalance = 100;
            it(@"should sets initial balance to a value", ^{
                bankAccount = [[BankAccount alloc ]initWithBalance:initialBalance];
                expect(bankAccount.balance).to.equal(initialBalance);
            }); 
        });
        context(@"without initial value", ^{
            it(@"should sets initial balance to zero", ^{
                bankAccount = [[BankAccount alloc] init];
                expect(bankAccount.balance).to.equal(0);
            });
        });
        afterEach(^{
            bankAccount = nil;
        });
    });
    describe(@"deposit", ^{
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
    afterAll(^{
        bankAccount = nil;
    });
//        describe(@"increase the balance", ^{
//            before(^{
//                [bankAccount deposit:30];
//            });
//            it(@"should have balance in $80", ^{
//                expect(bankAccount.balance).to.equal(80);
//            });
//            before(^{
//                [bankAccount deposit:50];
//                NSLog(@"before +50 %d",bankAccount.balance);
//            });
//            it(@"should have balance in $130", ^{
//                NSLog(@"%d",bankAccount.balance);
//                expect(bankAccount.balance).to.equal(130);
//                NSLog(@"%d",bankAccount.balance);
//            });
//        });
//    });
});
SpecEnd




