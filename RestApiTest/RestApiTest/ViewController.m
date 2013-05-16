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
    //UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(50,50,50,50) ];
    //UITextField *text = [[UIButton alloc] initWithFrame:CGRectMake(10,10,frameForWindow.size.width,frameForWindow.size.height) ];
    self.workerIdTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 190, 380, 490)] ;
    self.workerIdTextField.text= @"初始化字符串";
    self.workerIdTextField.textColor=[UIColor whiteColor];
    //self.workerIdTextField.borderStyle = UITextBorderStyleRoundedRect;
    //纱布蚊子，怎么自动换行啊？？？！！！
    //self.workerIdTextField.
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage: [UIImage imageNamed:@"settingButton.png"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [self.view addSubview:_workerIdTextField];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Event Method

- (IBAction)buttonPressed:(id)sender
{
    [sender setBackgroundImage: [UIImage imageNamed:@"backButton.png"] forState:UIControlStateNormal];
    [self.navigationController popViewControllerAnimated:YES];
    
    NSError *error;
    //加载一个NSURL对象
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.weather.com.cn/data/101020100.html"]];
    //将请求的url数据放到NSData对象中
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //IOS5自带解析类NSJSONSerialization从response中解析出数据放到字典中
    NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
    NSDictionary *weatherInfo = [weatherDic objectForKey:@"weatherinfo"];
    self.workerIdTextField.text = [NSString stringWithFormat:@"今天是 %@  %@  %@  的天气状况是：%@  %@ ",[weatherInfo objectForKey:@"date_y"],[weatherInfo objectForKey:@"week"],[weatherInfo objectForKey:@"city"], [weatherInfo objectForKey:@"weather1"], [weatherInfo objectForKey:@"temp1"]];
    NSLog(@"weatherInfo字典里面的内容为--》%@", weatherDic );
    
}
@end
