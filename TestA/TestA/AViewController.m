//
//  AViewController.m
//  TestA
//
//  Created by Lixinjie on 14/10/30.
//  Copyright (c) 2014年 Lixinjie. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [aButton setFrame:CGRectMake(10, 100, 80, 24)];
    [aButton setBackgroundColor:[UIColor blueColor]];
    [aButton setTitle:@"返回" forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
}
- (void)buttonAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
