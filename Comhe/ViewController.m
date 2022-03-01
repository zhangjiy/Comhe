//
//  ViewController.m
//  Comhe
//
//  Created by jiyang on 2022/2/28.
//

#import "ViewController.h"
#import "CHomeHeaderView.h"
#import "CPrefixHeader.h"
#import "UIView+JYFrame.h"

@interface ViewController ()
@property (nonatomic, strong) CHomeHeaderView *headerView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubViews];
}

- (void)initSubViews {
    [self.view addSubview:self.headerView];
    [self.view layoutIfNeeded];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.headerView.width = self.view.width - CHomeLeft * 2;
    self.headerView.height = CHomeHeaderHeight;
    self.headerView.top = CHomeHeaderTop;
    self.headerView.left = CHomeLeft;
}

- (CHomeHeaderView *)headerView {
    if (!_headerView) {
        _headerView = [[CHomeHeaderView alloc] initWithFrame:CGRectZero];
    }

    return _headerView;
}

@end
