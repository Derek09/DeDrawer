//
//  DeCenterViewController.m
//  DeDrawer
//
//  Created by Derek Lix on 13-12-17.
//  Copyright (c) 2013年 Derek Lix. All rights reserved.
//

#import "DeCenterViewController.h"



@interface DeCenterViewController ()

@end

@implementation DeCenterViewController


-(DeRootViewController*)mm_drawerController{
    if([self.parentViewController isKindOfClass:[DeRootViewController class]]){
        return (DeRootViewController*)self.parentViewController;
    }
    else if([self.parentViewController isKindOfClass:[UINavigationController class]] &&
            [self.parentViewController.parentViewController isKindOfClass:[DeRootViewController class]]){
        return (DeRootViewController*)[self.parentViewController parentViewController];
    }
    else{
        return nil;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"initWithNibName");

    }
    return self;
}
-(id)init
{
    if (self=[super init]) {
        // Custom initialization
        NSLog(@"init");

    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    UIBarButtonItem* leftButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStyleBordered target:self action:@selector(leftBarPressed:)];
    [leftButtonItem setTitle:@"left"];
    [leftButtonItem setImage:[UIImage imageNamed:@"btn_sliding.png"]];
    [leftButtonItem setImageInsets:UIEdgeInsetsMake(0.0, -20, 0.0, 0.0)];
    [self.navigationItem setLeftBarButtonItem:leftButtonItem animated:YES];
    
    
    [self performSelector:@selector(doo) withObject:nil afterDelay:2];
    
    [leftButtonItem release];
    
//    UITableView* tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
//    [tableView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:tableView];
//    [tableView release];
    
}


-(void)doo
{
    NSLog(@"leftButtonItem :%@",NSStringFromCGRect(self.navigationItem.leftBarButtonItem.customView.frame));
}

-(void)leftBarPressed:(id)sender
{
    NSLog(@"leftBarPressed");
    [self.mm_drawerController slider2Left];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
