//
//  VVStack.h
//  VVStack
//
//  Created by 周武德 on 16/3/6.
//  Copyright © 2016年 周武德. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVStack : NSObject
- (void)push:(double)num;
- (double)top;
//- (NSUInteger)count;
- (double)pop;
@end
