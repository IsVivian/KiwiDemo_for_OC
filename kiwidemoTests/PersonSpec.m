//
//  PersonSpec.m
//  kiwidemo
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "Person.h"

SPEC_BEGIN(PersonSpec)

describe(@"PersonSpec", ^{
    
    context(@"when created", ^{
        
        __block Person *person = nil;
        
        beforeEach(^{
            person = [Person somePerson];
        });
        
        it(@"person test stub", ^{
//            [person stub:@selector(name) andReturn:@"Tom"];
//            [person stub:@selector(personDespriction:sex:) withArguments:@"Tom",@"girl"];
            
            [person stub:@selector(personDespriction:sex:) withBlock:^id(NSArray *params) {
                
                NSLog(@"%@",params);
                return @"person test stub";
                
            }];
        });
        
        afterEach(^{
            person = nil;
        });

    });
    
    context(@"give a person with name CHB", ^{
        
        __block Person *person = nil;
        
        beforeEach(^{
            person = [Person somePerson];
        });
        
        it(@"Person need a name", ^{
//            person.name = @"Tom";
//            NSString *testName = [person name];
//            [[testName should] equal:@"Tom"];
        });
        
        it(@"Person need a name and sex", ^{
            NSString *testStr1 = [person personDespriction:@"isVivivan" sex:@"girl"];
            NSString *testStr2 = [person personDespriction:@"Jack" sex:@"boy"];
            NSLog(@"1---%@,2---%@",testStr1,testStr2);
            
        });
        
        afterEach(^{
            person = nil;
        });
        
    });
    
});

SPEC_END
