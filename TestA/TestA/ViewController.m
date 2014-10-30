//
//  ViewController.m
//  TestA
//
//  Created by Lixinjie on 14/10/30.
//  Copyright (c) 2014年 Lixinjie. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [aButton setFrame:CGRectMake(10, 100, 80, 24)];
    [aButton setBackgroundColor:[UIColor blueColor]];
    [aButton setTitle:@"按钮" forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
}
- (void)buttonAction {
    NSLog(@"点击了按钮,self.frame：%@", NSStringFromCGRect(self.view.frame));
    AViewController *aVC = [[AViewController alloc] init];
    [self presentViewController:aVC animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
