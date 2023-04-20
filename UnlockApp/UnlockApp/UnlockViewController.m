//
//  UnlockViewController.m
//  UnlockApp
//
//  Created by yangtao on 2023/4/20.
//

#import "UnlockViewController.h"

@interface UnlockViewController ()

@property (nonatomic, strong) UIButton *button;

@end


@implementation UnlockViewController

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.greenColor;
    
    [self.view addSubview:self.button];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        [make center];
        make.size.mas_equalTo(CGSizeMake(100, 50));
    }];
}

- (void)didClickButton {
    !self.unlockCompleteBlock ? : self.unlockCompleteBlock();
}


#pragma mark - 懒加载
- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] init];
        _button.backgroundColor = UIColor.blueColor;
        [_button addTarget:self action:@selector(didClickButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
