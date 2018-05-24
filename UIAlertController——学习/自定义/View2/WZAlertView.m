//
//  WZAlertView.m
//  UIAlertController——学习
//
//  Created by apple on 2018/5/24.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "WZAlertView.h"

@implementation WZAlertView




- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self awakeFromNib];
        _myView.layer.cornerRadius = 10;
        _iKnowBtn.layer.cornerRadius = 18;
        //经过测试，UILabel 必须设置设置 masksToBounds 这一键值对，才会出现圆角效果；UIButton、UIView、UIImageView 只需设置 layer.cornerRadius 这一键值对就可实现圆角效果
        //      设置边框  layer.borderWidth ，注意该 key 对应 Value 的 type 应该设置为 String
        //        layer.borderColor , 注意该 key 对应 Value 的 type 应该设置为 Color
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self awakeFromNib];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"WZAlertView" owner:self options:nil];
    
     self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
    
    
}

@end
