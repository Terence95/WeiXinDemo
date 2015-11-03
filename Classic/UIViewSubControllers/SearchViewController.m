//
//  SearchViewController.m
//  WeiXinDemo
//
//  Created by 中软国际907 on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.title = @"搜索";
    
    [self initUI];
}

-(void)initUI{
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake((Screen_W-200)/2, 100, 200, 44)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    btn.layer.cornerRadius = 5.0f;
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}


-(void)btnClicked:(id)sender{
 
}






@end
