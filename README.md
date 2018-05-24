# mygit


## MoreView 使用方法

### 效果图
![效果图](/Users/apple/Desktop/企易贷ViewModel/信用分详情介绍/xiaogup.png)



### 创建
```
#import "MoreView.h"

@property MoreView *iKonwView;


_iKonwView = [[MoreView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
[_iKonwView.iKnowBtn addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:_iKonwView];
_iKonwView.hidden = YES;

_iKonwView.hidden = YES;

```

###  调用
```
if (sender == _button) { //  显示
_iKonwView.hidden = NO;
return;
}

if (sender == _iKonwView.iKnowBtn) { 消失
_iKonwView.hidden = YES;

return;
}

```
## WZAlertView 使用方法

### 
```
#import "WZAlertView.h"

```


















