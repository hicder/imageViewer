//
//  ImageViewController.h
//  ImageViewer
//
//  Created by Hieu on 6/8/13.
//  Copyright (c) 2013 Hieu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>


@interface ImageViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)choosePhoto:(id)sender;
@property (nonatomic, strong) UIImagePickerController *icp;

@end
