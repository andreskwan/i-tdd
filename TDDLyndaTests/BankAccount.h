//
// Created by Andres Kwan on 6/10/15.
// Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BankAccount : NSObject


- (void)deposit:(int)amount;

- (instancetype)initWithBalance:(int)balance;

- (void)withdraw:(int)amount;
@end