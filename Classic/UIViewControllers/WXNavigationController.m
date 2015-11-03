//
//  WXNavigationController.m
//  WeiXinDemo
//
//  Created by 中软国际907 on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "WXNavigationController.h"

@interface WXNavigationController ()

@end

@implementation WXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    [self initNavigationBarLeftButton:viewController];
    [super pushViewController:viewController animated:animated];
}

-(void)initNavigationBarLeftButton:(UIViewController*)viewController{
    
    NSLog(@"self.viewControllers.count=%lu",(unsigned long)self.viewControllers.count);
    
    if ((self.viewControllers.count) > 0 ) {
        [viewController.navigationItem setHidesBackButton:YES];
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_back_arrow_2.png"] style:UIBarButtonItemStylePlain target:self action:@selector(backBtn:)];
    }
    
}

-(void)backBtn:(id)sender{
    if (sender && [sender isKindOfClass:[UIBarButtonItem class]]) {
        [self popViewControllerAnimated:YES];
    }
}














@end
