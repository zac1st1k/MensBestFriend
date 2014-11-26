//
//  XZZDog.m
//  MensBestFriend
//
//  Created by Zac on 26/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import "XZZDog.h"

@implementation XZZDog

-(void)bark;
{
    NSLog(@"Woof! Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes;
{
    for (int i; i <= numberOfTimes; i++)
    {
        NSLog(@"Woof! Woof!");
    }
}
@end
