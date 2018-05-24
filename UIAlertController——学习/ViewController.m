//
//  ViewController.m
//  UIAlertController——学习
//
//  Created by apple on 2018/5/23.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)button2:(id)sender {
}

- (IBAction)button:(UIButton *)sender {
    // @"1.点击背景是否接受事件\n2.改变动画类型\n3.只有两个按钮的时候，是横排还是竖排\n4.改变背景颜色" 后台给的数据最好是这样
           NSString * str = @"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色";
    str = [str stringByReplacingOccurrencesOfString:@"||" withString:@"\n"];
            UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:@"提示" message:str preferredStyle:UIAlertControllerStyleAlert];
            UIView *subView1 = alertVc.view.subviews[0];
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
            UIView *subView2 = subView1.subviews[0];
            UIView *subView3 = subView2.subviews[0];
            UIView *subView4 = subView3.subviews[0];
            UIView *subView5 = subView4.subviews[0];
            UILabel *title = subView5.subviews[0];
            UILabel *message = subView5.subviews[1];
            message.textAlignment = NSTextAlignmentLeft;
            //           title.textAlignment = NSTextAlignmentLeft;
            UIAlertAction *okAction =  [UIAlertAction actionWithTitle:@"去更新" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:downLoadUrl]];
            }];
            [alertVc addAction:okAction];
            [self presentViewController:alertVc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
