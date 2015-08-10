//
// Created by Andres Kwan on 6/10/15.
// Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import <Foundation/Foundation.h>

static const int kMaxWithdrawAllowed = 500;

@interface BankAccount : NSObject

- (void)deposit:(int)amount;

- (instancetype)initWithBalance:(int)balance;

@end