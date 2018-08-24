//
//  ViewController.m
//  SaveVideoForPotoAlbum
//
//  Created by dszhangyu on 2018/8/24.
//  Copyright © 2018年 dszhangyu. All rights reserved.
//

#import "ViewController.h"
#import "ZYTool.h"

@interface ViewController ()
@property(nonatomic, strong) UIButton * saveBut;
@property(nonatomic, strong) MBProgressHUD * hud;
@end

@implementation ViewController

-(UIButton *)saveBut{
    if (!_saveBut) {
        _saveBut = [UIButton buttonWithType:UIButtonTypeCustom];
        [_saveBut setTitle:@"保存" forState:UIControlStateNormal];
        _saveBut.frame = CGRectMake(0, 0, 50, 50);
        _saveBut.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
        [_saveBut addTarget:self action:@selector(saveAction) forControlEvents:UIControlEventTouchUpInside];
        [_saveBut setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _saveBut;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.saveBut];
   

}

-(void)saveAction{
     __weak typeof(self)weakSelf = self;
    self.hud = [MBProgressHUD showMessag:@"保存中" toView:self.view];
    [ZYTool saveVideoForPhoto:[[NSBundle mainBundle] pathForResource:@"video.mp4" ofType:nil] complet:^(NSString *descirp) {
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.hud.hidden = YES;
            NSLog(@"%@",descirp);//描述信息
            [MBProgressHUD show:descirp icon:nil view:weakSelf.view];
        });
       
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
