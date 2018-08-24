//
//  ZYTool.h
//  SaveVideoForPotoAlbum
//
//  Created by dszhangyu on 2018/8/24.
//  Copyright © 2018年 dszhangyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD+ZY.h"

@interface ZYTool : NSObject
/**
 将视频文件保存相册中
 
 @param videoPath 视频路径
 @param complete 是否保存成功Yes成功
 */
+(void)saveVideoForPhoto:(NSString * )videoPath complet:(void(^)(NSString *  descirp))complete;


@end
