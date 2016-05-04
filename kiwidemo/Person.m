//
//  Person.m
//  kiwidemo
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import "Person.h"

@implementation Person

+(id)somePerson{

    return [Person new];

}

-(NSString *)personDespriction:(NSString *)name  sex:(NSString *)sex{

    return [name stringByAppendingString:sex];

}

@end
