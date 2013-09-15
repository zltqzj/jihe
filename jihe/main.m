//
//  main.m
//  jihe
//
//  Created by ZKR on 9/12/13.
//  Copyright (c) 2013 ZKR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "NSNumber+aaa.h"

// 基本操作
void test1()
{
    NSNumber* num1 = [[NSNumber alloc] initWithInt:4];
    NSNumber* num2 = [[NSNumber alloc] initWithFloat:2.5f];
    NSNumber* num3 = [NSNumber numberWithChar:'a'];
    
    NSValue* valu1 = [NSValue valueWithRange:NSMakeRange(5, 6)];
 
    NSArray* array = [[NSArray alloc] initWithObjects:num1,num2,num3,valu1, nil];
    NSLog(@"%@",array);
    
    long index = [array indexOfObject:[NSNumber numberWithInt:4]];// 查内容的下标
    
    NSLog(@"4在数组的位置%ld",index);
    
    for (NSNumber* number in array) {
        NSLog(@"数组每一项%@",number);
    }
}
// 数组排序
void sortArray()
{
    NSNumber * num1 = [NSNumber numberWithInt:4];
    NSNumber * num2 = [NSNumber numberWithInt:500];
    NSNumber * num3 = [NSNumber numberWithInt:250];
    NSNumber * num4 = [NSNumber numberWithInt:11];
    NSNumber * num5 = [NSNumber numberWithFloat:20.56f];
    
    NSMutableArray * array = [[NSMutableArray alloc] initWithObjects:num1,num2,num3,num4,num5, nil];
    
    NSArray* array1 = [array sortedArrayUsingSelector:@selector(myCompare:)];
    NSLog(@"array1 = %@",array1);
    
    
    
    // 按名字、年龄排序
       Person * per1 = [[Person alloc] initWithName:@"aer1" Age:20];
        Person * per2 = [[Person alloc] initWithName:@"ber2" Age:24];
        Person * per3 = [[Person alloc] initWithName:@"cer3" Age:18];
        NSMutableArray * array2 = [[NSMutableArray alloc] initWithObjects:per1,per2,per3, nil];
        [per1 release];
        [per2 release];
        [per3 release];
    
        NSArray * array3 = [array2 sortedArrayUsingSelector:@selector(ageCompare:)];
        NSLog(@"%@",array3);
    
       NSArray * array4 = [array2 sortedArrayUsingSelector:@selector(nameCompare:)];
        NSLog(@"%@",array4);

    
    
    
}


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
       // test1();
        sortArray();
        
        
        
    }
    return 0;
}

