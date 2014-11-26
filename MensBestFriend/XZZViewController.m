//
//  XZZViewController.m
//  MensBestFriend
//
//  Created by Zac on 26/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import "XZZViewController.h"
#import "XZZDog.h"
@interface XZZViewController ()

@end

@implementation XZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    XZZDog *myDog = [[XZZDog alloc] init];
    myDog.name = @"Faye";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    NSLog(@"My dog is named %@ and its age is %i the breed is %@.", myDog.name, myDog.age, myDog.breed);
    [myDog bark];
    [myDog barkANumberOfTimes:10];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
