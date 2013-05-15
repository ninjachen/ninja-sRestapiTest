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
    //1
    //CGRect frameForWindow = [[UIScreen mainScreen] bounds];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50,50,50,50) ];
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(50,50,50,50) ];
    //UITextField *text = [[UIButton alloc] initWithFrame:CGRectMake(10,10,frameForWindow.size.width,frameForWindow.size.height) ];
    self.workerIdTextField = [[UITextField alloc] initWithFrame:CGRectMake(150, 14, 160, 30)] ;
    self.workerIdTextField.text= @"初始化字符串";
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage: [UIImage imageNamed:@"settingButton.png"] forState:UIControlStateNormal];
    //[self.view addSubview:button];
    //[self.view addSubview:_workerIdTextField];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Event Method

- (IBAction)buttonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
