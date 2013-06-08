//
//  AppInfoViewController.h
//  ImageViewer
//
//  Created by Hieu on 6/8/13.
//  Copyright (c) 2013 Hieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppInfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *authorInfo;
@property (weak, nonatomic) IBOutlet UILabel *appDetailInfo;
@property (strong, nonatomic) NSDictionary *infoArrays;
@property (strong, nonatomic) NSArray *infoArraysKeys;
@property (weak, nonatomic) IBOutlet UIImageView *authorImage;

@end
