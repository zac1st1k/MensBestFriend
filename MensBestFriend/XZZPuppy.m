//
//  XZZPuppy.m
//  MensBestFriend
//
//  Created by Zac on 27/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import "XZZPuppy.h"

@implementation XZZPuppy

- (void)givePuppyEyes
{
    NSLog(@":)");
}

- (void)bark
{
    [super bark];
    NSLog(@"Whimper Whimper!");
    [self givePuppyEyes];
}

@end
