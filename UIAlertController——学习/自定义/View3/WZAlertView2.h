//
//  WZAlertView2.h
//  UIAlertController——学习
//
//  Created by apple on 2018/5/24.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZAlertView2 : UIView

@property (strong,nonatomic) NSString *alertString;

@property (strong,nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UITableView *myTabView;
@property (strong, nonatomic) IBOutlet UIButton *iKnownBtn;
@end
