//
//  ItemReturn.m
//  TDDLynda
//
//  Created by Andres Kwan on 6/14/15.
//  Copyright (c) 2015 ___PEPE___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ItemReturn.h"

@interface ItemReturnTest : XCTestCase

@end

@implementation ItemReturnTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReturnMethod {
    // This is an example of a functional test case.
    ItemReturn * itemReturn = [[ItemReturn alloc]init];
    id shouldBeString = [itemReturn returnString];
    XCTAssertTrue([shouldBeString isKindOfClass:[NSString class]], @"%s don't retutn a string", __PRETTY_FUNCTION__);
}


@end
