//
//  AppInfoViewController.m
//  ImageViewer
//
//  Created by Hieu on 6/8/13.
//  Copyright (c) 2013 Hieu. All rights reserved.
//

#import "AppInfoViewController.h"

@interface AppInfoViewController ()

@end

@implementation AppInfoViewController
@synthesize authorInfo, appDetailInfo, infoArrays, infoArraysKeys, authorImage;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *myFile = [[NSBundle mainBundle]pathForResource:@"Appinfo" ofType:@"plist"];
    infoArrays = [[NSDictionary alloc]initWithContentsOfFile:myFile];
    infoArraysKeys = [infoArrays allKeys];
    
    [authorInfo setText:[infoArrays objectForKey:infoArraysKeys[1]]];
    [appDetailInfo setText:[infoArrays objectForKey:infoArraysKeys[0]]];
    
    myFile = [[NSBundle mainBundle]pathForResource:@"Hieu" ofType:@"jpg"];
    UIImage *authorPhoto = [[UIImage alloc]initWithContentsOfFile:myFile];
    [authorImage setImage:authorPhoto];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
