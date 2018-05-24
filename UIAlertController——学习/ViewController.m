//
//  ViewController.m
//  UIAlertController——学习
//
//  Created by apple on 2018/5/23.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "ViewController.h"
#import "MoreView.h"
#import "WZAlertView.h"
#import "WZAlertView2.h"
@interface ViewController ()
@property MoreView *iKonwView;

@property WZAlertView *wzAlertView;

@property WZAlertView2 *wzAlertView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _wzAlertView = [[WZAlertView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_wzAlertView.iKnowBtn addTarget:self action:@selector(buttonDDD:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_wzAlertView];
    _wzAlertView.contentText.text = [@"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色" stringByReplacingOccurrencesOfString:@"||" withString:@"\n"];
    _wzAlertView.hidden = YES;
    
    _wzAlertView2 = [[WZAlertView2 alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_wzAlertView2.iKnownBtn addTarget:self action:@selector(buttonDDD:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_wzAlertView2];
    _wzAlertView2.hidden = YES;
    _wzAlertView2.alertString =  [@"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色" stringByReplacingOccurrencesOfString:@"||" withString:@"\n"] ;
   
//    _wzAlertView.contentText.text = [@"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色" stringByReplacingOccurrencesOfString:@"||" withString:@"\n"];
//    _wzAlertView.hidden = YES;
    
    _iKonwView = [[MoreView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_iKonwView.iKnowBtn addTarget:self action:@selector(buttonDDD:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_iKonwView];
    _iKonwView.hidden = YES;
    
}
- (IBAction)button33:(id)sender {
    _wzAlertView2.hidden = NO;
}

- (IBAction)button32:(id)sender {
    _wzAlertView.hidden = NO;
}



- (IBAction)button3:(id)sender {
     _iKonwView.hidden = NO;
}
 - (void)buttonDDD:(id)sender{
     _iKonwView.hidden = YES;
    _wzAlertView.hidden = YES;
//     _wzAlertView2.hidden = YES;
}
- (IBAction)button2:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];
    
    // 使用富文本来改变alert的title字体大小和颜色
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:@"这里是标题"];
    [title addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:24] range:NSMakeRange(0, 2)];
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [alert setValue:title forKey:@"attributedTitle"];
    
    
    // 使用富文本来改变alert的message字体大小和颜色
    // NSMakeRange(0, 2) 代表:从0位置开始 两个字符
    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@"这里是正文信息"];
    [message addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:10] range:NSMakeRange(0, 6)];
    [message addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [message addAttribute:NSForegroundColorAttributeName value:[UIColor brownColor] range:NSMakeRange(3, 3)];
    
    [alert setValue:message forKey:@"attributedMessage"];
    
    
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"" style:UIAlertActionStyleCancel handler:nil];
    
    // 设置按钮背景图片
    UIImage *accessoryImage = [[UIImage imageNamed:@"sparks"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [cancelAction setValue:accessoryImage forKey:@"image"];
    //    [cancelAction ]
    // 设置按钮的title颜色
    //    [cancelAction setValue:[UIColor lightGrayColor] forKey:@"titleTextColor"];
    // 设置按钮的title的对齐方式
    [cancelAction setValue:[NSNumber numberWithInteger:NSTextAlignmentLeft] forKey:@"titleTextAlignment"];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    //[alert addAction:okAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)button:(UIButton *)sender {
    // @"1.点击背景是否接受事件\n2.改变动画类型\n3.只有两个按钮的时候，是横排还是竖排\n4.改变背景颜色" 后台给的数据最好是这样
           NSString * str = @"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色";
    str = [str stringByReplacingOccurrencesOfString:@"||" withString:@"\n"];
            UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:@"提示" message:str preferredStyle:UIAlertControllerStyleAlert];
            UIView *subView1 = alertVc.view.subviews[0];
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
