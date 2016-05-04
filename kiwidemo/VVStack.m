//
//  VVStack.m
//  VVStack
//
//  Created by 周武德 on 16/3/6.
//  Copyright © 2016年 周武德. All rights reserved.
//

#import "VVStack.h"
@interface VVStack()
@property (nonatomic, strong) NSMutableArray *numbers;
@end
@implementation VVStack
- (id)init {
    if (self = [super init]) {
        //在init 和dealloc 不要使用 self.property这样的形式
        _numbers = [NSMutableArray new];
    }
    return self;
}
- (void)push:(double)num {
     [self.numbers addObject:@(num)];
}

- (double)top {
    return [[self.numbers lastObject] doubleValue];
}
- (NSUInteger)count {
    return [self.numbers count];
}
- (double)pop {
    if ([self count] == 0) {
        [NSException raise:@"VVStackPopEmptyException" format:@"Can not pop an empty stack."];
    }
    double result = [self top];
    [self.numbers removeLastObject];
    return result;
}
@end
