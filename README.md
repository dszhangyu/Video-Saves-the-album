# Video-Saves-the-album
一行代码将本地视频保存到相册中
1、导入#import "ZYTool.h"
2、调用：
  [ZYTool saveVideoForPhoto:[[NSBundle mainBundle] pathForResource:@"video.mp4" ofType:nil] complet:^(NSString *descirp) {
         //子线程
        dispatch_async(dispatch_get_main_queue(), ^{
        //主线程ui操作
            NSLog(@"%@",descirp);//描述信息
        });
       
     }];
