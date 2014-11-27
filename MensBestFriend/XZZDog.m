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
    self.name = @"Rodger";
    self.breed = @"Lab";
}

-(void)barkANumberOfTimes:(int)numberOfTimes;
{
    for (int i; i <= numberOfTimes; i++)
    {
        [self bark];
    }
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
{
    if (!isLoud)
    {
        for (int i; i <= numberOfTimes; i++)
        {
            NSLog(@"Yip! Yip1");
        }
    }
    else
    {
        for (int i; i <= numberOfTimes; i++)
        {
            [self bark];
        }
    }
   
}

-(int)ageInDogYearsFromAge:(int)regularYears
{
    int newAge = regularYears * 7;
    return newAge;
}

-(void)changeBreedToWerewolf;
{
    self.breed = @"Werewolf";
}
@end
