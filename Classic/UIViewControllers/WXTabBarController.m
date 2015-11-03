//
//  WXTabBarController.m
//  WeiXinDemo
//
//  Created by 中软国际907 on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "WXTabBarController.h"

#import "HomeViewController.h"
#import "ContantViewController.h"
#import "FindViewController.h"
#import "MineViewController.h"
#import "WXNavigationController.h"

@interface WXTabBarController ()

@end

@implementation WXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initTabBarControllers];
    
}

-(void)initTabBarControllers{
    HomeViewController* home = [[HomeViewController alloc] init];
    [self initTabBarWithViewController:home title:@"微信" image:@"tabbar_mainframe.png" selectedImage:@"tabbar_mainframeHL.png"];
    
    ContantViewController* contant = [[ContantViewController alloc] init];
    [self initTabBarWithViewController:contant title:@"通讯录" image:@"tabbar_contacts.png" selectedImage:@"tabbar_contactsHL.png"];
    
    FindViewController* find = [[FindViewController alloc] init];
    [self initTabBarWithViewController:find title:@"发现" image:@"tabbar_discover.png" selectedImage:@"tabbar_discoverHL.png"];
    
    MineViewController* mine = [[MineViewController alloc] init];
    [self initTabBarWithViewController:mine title:@"我" image:@"tabbar_me.png" selectedImage:@"tabbar_meHL.png"];
}

-(void)initTabBarWithViewController:(UIViewController*)vc title:(NSString*)title image:(NSString*)imageName selectedImage:(NSString*)selectedImageName{
    //    vc.view.backgroundColor = Random_Color;
    
    //1.取消系统自带的渲染模式
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //2.修改tabbar 文字的颜色
    NSMutableDictionary* dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = WX_TabBar_Color(9, 187, 7);
    [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateSelected];
    dic[NSForegroundColorAttributeName] = WX_TabBar_Color(168, 179, 168);
    [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    
    WXNavigationController* navi = [[WXNavigationController alloc] initWithRootViewController:vc];
    
//    navi.navigationItem.title = title;
//    vc.tabBarItem.title = title;
    
    vc.title = title;
    
    [self addChildViewController:navi];
}


























@end
