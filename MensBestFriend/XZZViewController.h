//
//  XZZViewController.h
//  MensBestFriend
//
//  Created by Zac on 26/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XZZViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

- (IBAction)newDOgBarButtonItemPressed:(UIBarButtonItem *)sender;
- (void)printHelloWorld;

@end
