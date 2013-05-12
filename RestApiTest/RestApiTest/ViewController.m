//
//  ViewController.m
//  RestApiTest
//
//  Created by ninja chen on 5/12/13.
//  Copyright (c) 2013 ninja chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (retain, nonatomic) UITextField *workerIdTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frameForWindow = [[UIScreen mainScreen] bounds];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50,50,frameForWindow.size.width,frameForWindow.size.height) ];
    //UITextField *text = [[UIButton alloc] initWithFrame:CGRectMake(10,10,frameForWindow.size.width,frameForWindow.size.height) ];
    self.workerIdTextField = [[UITextField alloc] initWithFrame:CGRectMake(150, 14, 160, 30)] ;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
