//
//  Person.h
//  kiwidemo
//
//  Created by sherry on 16/5/3.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (copy, nonatomic) NSString *name;

+(id)somePerson;

-(NSString *)personDespriction:(NSString *)name  sex:(NSString *)sex;

@end
