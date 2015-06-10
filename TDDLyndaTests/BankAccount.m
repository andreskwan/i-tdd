//
// Created by Andres Kwan on 6/10/15.
// Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import "BankAccount.h"


@interface BankAccount()
    @property(nonatomic) int balance;
@end

@implementation BankAccount

#pragma mark initializers
- (instancetype)initWithBalance:(int)balance {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _balance = balance;
    }
    return self;
}

- (instancetype)init {
    // Forward to the "designated" initialization method
    return [self initWithBalance:0];
}

#pragma mark instance methods
- (void)deposit:(int)amount {
    self.balance = self.balance + amount;
}

- (void)withdraw:(int)amount {
    self.balance -= amount;
}

@end