//
//  NSNumber+aaa.m
//  jihe
//
//  Created by ZKR on 9/12/13.
//  Copyright (c) 2013 ZKR. All rights reserved.
//

#import "NSNumber+aaa.h"

@implementation NSNumber (aaa)

- (NSComparisonResult)myCompare:(NSNumber *)otherPerson{
    if ([self compare:otherPerson] == -1) {
        return  NSOrderedDescending;
    }
    return NSOrderedAscending;
}

@end
