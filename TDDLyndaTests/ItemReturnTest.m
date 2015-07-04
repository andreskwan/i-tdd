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
@property (nonatomic, strong) ItemReturn * itemReturn;
@end

@implementation ItemReturnTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.itemReturn = [[ItemReturn alloc] init];
}

- (void)tearDown {
    self.itemReturn = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];

}

- (void)testReturnMethod {
    // This is an example of a functional test case.
    id shouldBeString = [self.itemReturn returnString];
    XCTAssertTrue([shouldBeString isKindOfClass:[NSString class]], @"%s don't retutn a string", __PRETTY_FUNCTION__);
}

- (void)testFail {
    // This is an example of a functional test case.
    id shouldBeString = [self.itemReturn returnString];
    XCTAssertNotNil(shouldBeString, @"%s don't retutn a string", __PRETTY_FUNCTION__);
}

@end
