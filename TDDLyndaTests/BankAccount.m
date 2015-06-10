//
// Created by Andres Kwan on 6/10/15.
// Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import "BankAccount.h"


@interface BankAccount()
    @property(nonatomic) int balance;
@end

@implementation BankAccount
- (void)deposit:(int)amount {
    self.balance = self.balance + amount;
}

- (void)withdraw:(int)amount {
    self.balance -= amount;
}
@end