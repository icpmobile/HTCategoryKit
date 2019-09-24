//
//  NSObject+MP.m
//  MobileProject
//
//  Created by wujunyang on 16/7/9.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "MBProgressHUD+MP.h"
#import "MBBundle.h"

@implementation MBProgressHUD (MP)

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error ToView:(UIView *)view{
    [self showCustomIcon:@"MBHUD_Error" Title:error ToView:view];
}

+ (void)showSuccess:(NSString *)success ToView:(UIView *)view
{
    [self showCustomIcon:@"MBHUD_Success" Title:success ToView:view];
}

+ (void)showInfo:(NSString *)Info ToView:(UIView *)view
{
    [self showCustomIcon:@"MBHUD_Info" Title:Info ToView:view];
}

+ (void)showWarn:(NSString *)Warn ToView:(UIView *)view
{
    [self showCustomIcon:@"MBHUD_Warn" Title:Warn ToView:view];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString *)message ToView:(UIView *)view {
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode=MBProgressHUDModeText;
    
    hud.label.text= message;
    hud.label.font = [UIFont systemFontOfSize:15];
     hud.label.textColor = [UIColor whiteColor];
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    //修改样式，否则等待框背景色将为半透明
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    //设置等待框背景色为黑色
    hud.bezelView.backgroundColor = [UIColor blackColor];
    //代表需要蒙版效果
    
    hud.backgroundColor = [UIColor blackColor];
    hud.alpha = 0.4;//设置遮罩透明度
    return hud;
}

//加载菊花视图
+(MBProgressHUD *)showLoadMessage:(NSString *)message ToView:(UIView *)view {
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode= MBProgressHUDModeIndeterminate;
    
    hud.label.text= message;
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.label.textColor = [UIColor whiteColor];
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    //修改样式，否则等待框背景色将为半透明
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    //设置等待框背景色为黑色
    hud.bezelView.backgroundColor = [UIColor blackColor];
    //设置菊花框为白色
    [UIActivityIndicatorView appearanceWhenContainedIn:[MBProgressHUD class], nil].color = [UIColor whiteColor];
    //代表需要蒙版效果
    hud.backgroundColor = [UIColor blackColor];
    hud.alpha = 0.4;//设置遮罩透明度
    return hud;
}


/**
 *  进度条View
 */
+ (MBProgressHUD *)showProgressToView:(UIView *)view Text:(NSString *)text{
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text=text;
    hud.label.font= [UIFont systemFontOfSize:15];
    // 代表需要蒙版效果
    //hud.dimBackground = YES;
    return hud;
}


//快速显示一条提示信息
+ (void)showAutoMessage:(NSString *)message{
    
    [self showAutoMessage:message ToView:nil];
}


//自动消失提示，无图
+ (void)showAutoMessage:(NSString *)message ToView:(UIView *)view{
    [self showMessage:message ToView:view RemainTime:1 Model:MBProgressHUDModeText];
}

//自定义停留时间，有图
+(void)showIconMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time{
    [self showMessage:message ToView:view RemainTime:time Model:MBProgressHUDModeIndeterminate];
}

//自定义停留时间，无图
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time{
    [self showMessage:message ToView:view RemainTime:time Model:MBProgressHUDModeText];
}

+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time Model:(MBProgressHUDMode)model{
    
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text= message;
    hud.label.numberOfLines = 0;
    hud.label.textColor = [UIColor whiteColor];
    hud.label.font= [UIFont systemFontOfSize:15];
    //模式
    hud.mode = model;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // 代表需要蒙版效果
    //修改样式，否则等待框背景色将为半透明
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    //设置等待框背景色为黑色
    hud.bezelView.backgroundColor = [UIColor blackColor];
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // X秒之后再消失
    [hud hideAnimated:YES afterDelay:time];
    
}

+ (void)showCustomIcon:(NSString *)iconName Title:(NSString *)title ToView:(UIView *)view
{
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text= title;
    hud.label.numberOfLines = 0;
    hud.label.font= [UIFont systemFontOfSize:15];
//    hud.label.textColor = [UIColor whiteColor]; 
//
   // NSInteger scale = [[UIScreen mainScreen] scale];
    
    NSBundle *bundle = [MBBundle bundle];
    
    NSString *backImg = [NSString stringWithFormat:@"%@@2x.png",iconName];
    NSString *backImgStr = [bundle pathForResource:backImg ofType:nil  inDirectory:@"HTCategoryKit.bundle"];
    
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:backImgStr]];
    
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;

    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
//    //修改样式，否则等待框背景色将为半透明
//    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
//    //设置等待框背景色为黑色
//    hud.bezelView.backgroundColor = [UIColor blackColor];
    //代表需要蒙版效果
//    hud.backgroundColor = [UIColor blackColor];
//    hud.alpha = 0.4;//设置遮罩透明度
//
    // 3秒之后再消失
    [hud hideAnimated:YES afterDelay:2];
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}


@end
