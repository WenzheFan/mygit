//
//  WZAlertView2.m
//  UIAlertController——学习
//
//  Created by apple on 2018/5/24.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "WZAlertView2.h"

@interface WZAlertView2()
//<UITableViewDelegate,UITableViewDataSource>



@end


@implementation WZAlertView2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self ==[super initWithFrame:frame ]) {
        [self awakeFromNib];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self == [super initWithCoder:aDecoder]) {
        [self awakeFromNib];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"WZAlertView2" owner:self options:nil];
    self.contentView.frame = self.bounds;
//    self.myTabView.delegate = self;
//    self.myTabView.dataSource = self;
    [self addSubview:self.contentView];
    
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSString *cellID = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    cell.textLabel.text = @"1.点击背景是否接受事件";
//    [@"1.点击背景是否接受事件||2.改变动画类型||3.只有两个按钮的时候，是横排还是竖排||4.改变背景颜色" stringByReplacingOccurrencesOfString:@"||" withString:@"\n"];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 30;
}
//+ (nonnull instancetype)appearance {
//    <#code#>
//}
//
//+ (nonnull instancetype)appearanceForTraitCollection:(nonnull UITraitCollection *)trait {
//    <#code#>
//}
//
//+ (nonnull instancetype)appearanceForTraitCollection:(nonnull UITraitCollection *)trait whenContainedIn:(nullable Class<UIAppearanceContainer>)ContainerClass, ... {
//    <#code#>
//}
//
//+ (nonnull instancetype)appearanceForTraitCollection:(nonnull UITraitCollection *)trait whenContainedInInstancesOfClasses:(nonnull NSArray<Class<UIAppearanceContainer>> *)containerTypes {
//    <#code#>
//}
//
//+ (nonnull instancetype)appearanceWhenContainedIn:(nullable Class<UIAppearanceContainer>)ContainerClass, ... {
//    <#code#>
//}
//
//+ (nonnull instancetype)appearanceWhenContainedInInstancesOfClasses:(nonnull NSArray<Class<UIAppearanceContainer>> *)containerTypes {
//    <#code#>
//}
//
//- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
//    <#code#>
//}
//
//- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(nonnull id<UICoordinateSpace>)coordinateSpace {
//    <#code#>
//}
//
//- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(nonnull id<UICoordinateSpace>)coordinateSpace {
//    <#code#>
//}
//
//- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(nonnull id<UICoordinateSpace>)coordinateSpace {
//    <#code#>
//}
//
//- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(nonnull id<UICoordinateSpace>)coordinateSpace {
//    <#code#>
//}
//
//- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
//    <#code#>
//}
//
//- (void)setNeedsFocusUpdate {
//    <#code#>
//}
//
//- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
//    <#code#>
//}
//
//- (void)updateFocusIfNeeded {
//    <#code#>
//}

@end
