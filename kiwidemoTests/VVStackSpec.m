//
//  VVStackSpec.m
//  kiwidemo
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "VVStack.h"

SPEC_BEGIN(VVStackSpec)

describe(@"VVStack", ^{
    
    context(@"when created", ^{
        
        //stack分别是在beforeEach和afterEach的block中的赋值的，因此我们需要在声明时在其前面加上__block标志
        __block VVStack *stack = nil;
        
        //在当前scope内部的每个it之前调用一次，对于context的配置代码应该写在这里
        beforeEach(^{
            stack = [VVStack new];
        });
        
        //在当前scope内部的每个it之后调用一次，用于清理测试后的代码
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class VVStack", ^{
            [[[VVStack class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot] beNil];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[theValue([stack top]) should] equal:theValue(2.3)];
            
            [stack push:4.6];
            [[theValue([stack top]) should] equal:4.6 withDelta:0.001];
        });
        
        it(@"should equal contains 0 element", ^{
            [[stack should] beEmpty];
        });
        
        it(@"should raise a excepiton when pop", ^{
            [[theBlock(^{
                [stack pop];
            }) should] raiseWithName:@"VVStackPopEmptyException"];
        });

    });
    
    context(@"when new created and pushed 4.6", ^{
        
        __block VVStack *stack = nil;
        
        beforeEach(^{
            stack = [VVStack new];
            [stack push:4.6];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"can be poped and the value equles 4.6", ^{
            [[theValue([stack pop]) should] equal:theValue(4.6)];
        });
        
        it(@"should contains 0 element after pop", ^{
            [stack pop];
            [[stack should] beEmpty];
        });
        
    });
    
});

SPEC_END
