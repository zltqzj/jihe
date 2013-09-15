//
//  Person.m
//  jihe
//
//  Created by ZKR on 9/12/13.
//  Copyright (c) 2013 ZKR. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _name,age = _age;

-(void)dealloc{
    [_name release];
    [super dealloc];
}

-(id)initWithName:(NSString *)newName
              Age:(int)newAge
{
    self = [super init];
    if (self) {
        _name = [newName retain];
        _age = newAge;
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@,age:%d",self.name,self.age];
}

- (NSComparisonResult)ageCompare:(Person *)otherPerson{
    
    if (self.age < otherPerson.age) {
        return NSOrderedDescending;
    }
    return NSOrderedAscending;
}

- (NSComparisonResult)nameCompare:(Person *)otherPerson{
    
    //    if ([self.name compare:otherPerson.name]) {
    //        return NSOrderedDescending;
    //    }
    //    return NSOrderedAscending;
    return [self.name compare:otherPerson.name];
}

@end
