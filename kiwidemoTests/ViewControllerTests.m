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
#import "PopViewController.h"

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
    
    context(@"when click a cell in tableView", ^{
        
        it(@"it will pop a PopViewController", ^{
            
            RootViewController *rootVC = [[RootViewController alloc]init];
            UIView *view = rootVC.view;
            [[view shouldNot] beNil];
            
            //模拟一个导航控制器，不是测试的对象，保持测试的单一性，用mock模拟
            UINavigationController *mockNavi = [UINavigationController mock];
            //存根
            [rootVC stub:@selector(navigationController) andReturn:mockNavi];
            //验证navi从创建到被销毁是否遵循这个方法
            [[mockNavi should] receive:@selector(pushViewController:animated:)];
            
            //捕获参数
            KWCaptureSpy *spy = [mockNavi captureArgument:@selector(pushViewController:animated:) atIndex:0];
            [rootVC tableView:rootVC.tableView didSelectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
            
            id obj = spy.argument;
            PopViewController *vc = obj;
            [[vc should] beKindOfClass:[PopViewController class]];
            
        });
        
    });
    
});

SPEC_END

#pragma clang diagnostic pop