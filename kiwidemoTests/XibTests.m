//
//  XibTests.m
//  KiwiTest
//
//  Created by Jan Olbrich on 14.12.14.
//  Copyright (c) 2014 Jan Olbrich. All rights reserved.
//

#import <kiwi.h>
@import UIKit;
#import "ViewControllerXIB.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

@interface ViewControllerXIB (ViewTestXIB)

@property (nonatomic) NSString *testString;
- (void)testFunction;

@end

SPEC_BEGIN(TestViewControllerXIB)


describe(@"During setup", ^{
    context(@"the Viewcontroller", ^{
        __block ViewControllerXIB *testVC;
        
        beforeAll(^{
            
        });
        
        beforeEach(^{
            testVC = [[ViewControllerXIB alloc] initWithNibName:@"ViewControlerXIB" bundle:nil];
        });
        
        it(@"should exist", ^{
            [[testVC shouldNot] beNil];
        });
        
        it(@"should have a property testString", ^{
            [[testVC should] respondToSelector:@selector(testString)];
        });
        
        it(@"should have a method testFunction", ^{
            [[testVC should] respondToSelector:@selector(testFunction)];
        });
        
        afterEach(^{
            testVC = nil;
        });
    });
});

SPEC_END

#pragma clang diagnostic pop
