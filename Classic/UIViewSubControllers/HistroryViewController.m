//
//  HistroryViewController.m
//  WeiXinDemo
//
//  Created by 中软国际907 on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "HistroryViewController.h"
#import "ThreeViewController.h"

@interface HistroryViewController ()

@end

@implementation HistroryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self initUI];
}

-(void)initUI{
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake((Screen_W-200)/2, 100, 200, 44)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    btn.layer.cornerRadius = 5.0f;
    btn.tag = 1000;
    
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}


-(void)btnClicked:(id)sender{
    if (sender && [sender isKindOfClass:[UIButton class]]) {
        UIButton* btn = (UIButton*)sender;
        
        ThreeViewController* three = [[ThreeViewController alloc] init];
        
        [self.navigationController pushViewController:three animated:YES];
        
        switch (btn.tag) {
            case 1000:
                break;
                
            default:
                break;
        }
    }
    
  
}
@end
