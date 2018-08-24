//
//  MBProgressHUD+ZY.h
//  SaveVideoForPotoAlbum
//
//  Created by dszhangyu on 2018/8/24.
//  Copyright © 2018年 dszhangyu. All rights reserved.
//

#import "MBProgressHUD.h"


@interface MBProgressHUD (ZY)
/**
 *  显示一些其他信息,有蒙版
 */
+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view;

/**
 *  显示一般信息
 */
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view;
@end
