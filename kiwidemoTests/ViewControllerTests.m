//
//  ViewControllerTests.m
//  KiwiTest
//
//  Created by Jan Olbrich on 28.11.14.
//  Copyright (c) 2014 Jan Olbrich. All rights reserved.
//

#import <kiwi.h>
@import UIKit;
#import "RootViewController.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

//@interface RootViewController (ViewTest)
//
//@property (nonatomic) NSString *testString;
//- (void)testFunction;
//
//@end

SPEC_BEGIN(TestViewController)


describe(@"During setup", ^{
    context(@"the RootViewcontroller", ^{
        __block RootViewController *testVC;
        
        beforeAll(^{
            
        });
        
        beforeEach(^{
            testVC = [[RootViewController alloc]init];
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