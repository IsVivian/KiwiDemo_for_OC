//
//  SimpleStringSpec.m
//  kiwidemo
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <Kiwi/Kiwi.h>

/*
 beforeAll(aBlock) - 当前scope内部的所有的其他block运行之前调用一次
 afterAll(aBlock) - 当前scope内部的所有的其他block运行之后调用一次
 beforeEach(aBlock) - 在scope内的每个it之前调用一次，对于context的配置代码应该写在这里
 afterEach(aBlock) - 在scope内的每个it之后调用一次，用于清理测试后的代码
 specify(aBlock) - 可以在里面直接书写不需要描述的测试
 pending(aString, aBlock) - 只打印一条log信息，不做测试。这个语句会给出一条警告，可以作为一开始集中书写行为描述时还未实现的测试的提示。
 xit(aString, aBlock) - 和pending一样，另一种写法。因为在真正实现时测试时只需要将x删掉就是it，但是pending语意更明确，因此还是推荐pending
 */

SPEC_BEGIN(SimpleStringSpec)

describe(@"SimpleString", ^{
    
    pending(@"This is a notice", ^{
        
    });
    
    xit(@"The notice is same to pending", ^{
    
    });
    
    context(@"when assigned to 'Hello world'", ^{
        
        NSString *greeting = @"Hello world";
        it(@"should exist", ^{
            
            [[greeting shouldNot] beNil];
            
        });
        
        it(@"should equal to 'Hello world'", ^{
            
            [[greeting should] equal:@"Hello world"];
            
        });
        
    });
    
    beforeAll(^{
        NSLog(@"------run beforeAll block");
    });
    
    afterAll(^{
        NSLog(@"++++++run afterAll block");
    });
    beforeEach(^{
        NSLog(@"~~~~~~run beforeEach block");
    });
    afterEach(^{
        NSLog(@"======run afterEach block");
    });
    
    
    
    
});

SPEC_END