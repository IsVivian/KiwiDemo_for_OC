//
//  kiwidemoTests.m
//  kiwidemoTests
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VVStack.h"

@interface kiwidemoTests : XCTestCase
@property(nonatomic,strong) VVStack *stack;
@end

@implementation kiwidemoTests

- (void)setUp {
    [super setUp];
    _stack = [VVStack new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _stack = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testStackExist {
    XCTAssertNotNil([VVStack class], @"VVStack class should exist.");
}

- (void)testStackObjectCanBeCreated {
    VVStack *stack = _stack;
    XCTAssertNotNil(stack, @"VVStack object can be created.");
}

- (void)testPushANumberAndGetIt {
    VVStack *stack = _stack;
    [stack push:2.3];
    double topNumber = [stack top];
    XCTAssertEqual(topNumber, 2.3, @"VVStack should can be pushed and has that top value.");
    
    [stack push:4.6];
    topNumber = [stack top];
    XCTAssertEqual(topNumber, 4.6, @"Top value of VVStack should be the last num pushed into it");
}


@end
