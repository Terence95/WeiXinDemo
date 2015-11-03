//
//  PublicDefine.h
//  WeiXinDemo
//
//  Created by nate on 15/11/3.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#ifndef WeiXinDemo_PublicDefine_h
#define WeiXinDemo_PublicDefine_h


//
#define Screen_W [UIScreen mainScreen].bounds.size.width
#define Screen_H [UIScreen mainScreen].bounds.size.height

//产生颜色随机数
#define Random_Color  [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

//指定RGB，产生颜色
#define WX_TabBar_Color(r, g, b)  [UIColor colorWithRed:(r)/255. green:(g)/255. blue:(b)/255. alpha:1.]


#endif
