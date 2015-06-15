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

- (bool)withdraw:(int)amount {
    if (amount <= kMaxWithdrawAllowed){
        self.balance -= amount;
        if (self.balance < 0) {
            self.balance -= 5;
        }
        return YES;
    }else{
        return NO;
    }
}

@end