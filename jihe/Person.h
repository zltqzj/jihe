//
//  Person.h
//  jihe
//
//  Created by ZKR on 9/12/13.
//  Copyright (c) 2013 ZKR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,retain)NSString * name;
@property(nonatomic,assign)int age;

-(id)initWithName:(NSString *)newName
              Age:(int)newAge;

- (NSComparisonResult)ageCompare:(Person *)otherPerson;

- (NSComparisonResult)nameCompare:(Person *)otherPerson;



@end
