//
//  HomeViewController.m
//  WeiXinDemo
//
//  Created by 中软国际907 on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "HomeViewController.h"
#import "SearchViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initNavigationBar];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)initNavigationBar{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"searchIcon.png"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClicked:)];
}

-(void)rightBarButtonClicked:(id)sender{
    if (sender && [sender isKindOfClass:[UIBarButtonItem class]]) {
        SearchViewController* search = [[SearchViewController alloc] init];
        
        [self.navigationController pushViewController:search animated:YES];
    }
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
