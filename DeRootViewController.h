//
//  DeRootViewController.h
//  DeDrawer
//
//  Created by Derek Lix on 13-12-17.
//  Copyright (c) 2013年 Derek Lix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeRootViewController : UIViewController

-(id)initWithCenterController:(UIViewController*)centerController leftController:(UIViewController*)leftController rightController:(UIViewController*)rightController;
-(void)slider2Left;

@property(nonatomic,strong)UIViewController* centerController;
@property(nonatomic,retain)UIViewController* rightController;
@property(nonatomic,strong)UIViewController* leftController;

@end
