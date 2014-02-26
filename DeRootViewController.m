//
//  DeRootViewController.m
//  DeDrawer
//
//  Created by Derek Lix on 13-12-17.
//  Copyright (c) 2013年 Derek Lix. All rights reserved.
//

#import "DeRootViewController.h"

@interface DeRootViewController ()
{
    UITapGestureRecognizer* tapGesture;
}

@end

@implementation DeRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithCenterController:(UIViewController*)centerController leftController:(UIViewController*)leftController rightController:(UIViewController*)rightController
{
    self=[super init];
    if (self) {
        
        if (!centerController) return self;
        
        [self addChildViewController:centerController];
        _centerController=centerController;
        if (leftController)
        {
            self.leftController=leftController;
            [self addChildViewController:leftController];
        }
        if (rightController)
        {
            _rightController=rightController;
            [self addChildViewController:rightController];
        }
        
        [self.view addSubview:centerController.view];
    
    }
    return self;
}

-(void)slider2Left
{
    NSLog(@"slider2Left");
    
    [self.view addSubview:self.leftController.view];
    self.leftController.view.frame=CGRectMake(0, 0, 200, self.centerController.view.frame.size.height);
    [self.leftController.view setBackgroundColor:[UIColor redColor]];
    
    self.centerController.view.frame=CGRectMake(200, 0,self.centerController.view.frame.size.width, self.centerController.view.frame.size.height);
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    tapGesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    [self.view addGestureRecognizer:tapGesture];
}

-(void)tapGesture:(UITapGestureRecognizer*)gesture
{
    NSLog(@"gesture :%d",gesture.numberOfTouches);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
