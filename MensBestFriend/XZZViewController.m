//
//  XZZViewController.m
//  MensBestFriend
//
//  Created by Zac on 26/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import "XZZViewController.h"
#import "XZZDog.h"
#import "XZZPuppy.h"

@interface XZZViewController ()

@end

@implementation XZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    XZZDog *myDog = [[XZZDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    XZZDog *secondDog = [[XZZDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Bo";
    secondDog.age = 2;
    secondDog.image = [UIImage imageNamed:@"Bo.jpg"];
    
    XZZDog *thirdDog = [[XZZDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.age = 3;
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    XZZDog *forthDog = [[XZZDog alloc] init];
    forthDog.name = @"Angel";
    forthDog.breed = @"Greyhound";
    forthDog.age = 4;
    forthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:forthDog];

    self.currentIndex = 0;
    
    XZZPuppy *littlePuppy = [[XZZPuppy alloc] init];
    [littlePuppy givePuppyEyes];
    [littlePuppy bark];
    littlePuppy.name = @"Connie";
    littlePuppy.breed = @"Dog";
    littlePuppy.image = [UIImage imageNamed:@"Connie.jpg"];
    [self.myDogs addObject:littlePuppy];
    
//    self.myImageView.image = secondDog.image;
//    self.nameLabel.text = myDog.name;
//    self.breedLabel.text = myDog.breed;
    
//    NSLog(@"My dog is named %@ and its age is %i the breed is %@.", myDog.name, myDog.age, myDog.breed);
//    [myDog bark];
//    [myDog barkANumberOfTimes:10];
//    NSLog(@"%@", myDog.breed);
//    [myDog changeBreedToWerewolf];
//    NSLog(@"%@", myDog.breed);

//    [self printHelloWorld];
    
//    [myDog barkANumberOfTimes:10 loudly:0];
//    NSLog(@"%i", [myDog ageInDogYearsFromAge:11]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDOgBarButtonItemPressed:(UIBarButtonItem *)sender {

    int newrand = arc4random() % [self.myDogs count];

    while (newrand == self.currentIndex)
    {
        newrand = arc4random() % [self.myDogs count];
    }
    XZZDog *randomDog = [self.myDogs objectAtIndex:newrand];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
    
    }];
    sender.title = @"And Another";
    self.currentIndex = newrand;
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

@end
