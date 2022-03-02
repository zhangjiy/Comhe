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
#import "UIColor+Extensions.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *navigationBar;
@property (nonatomic, strong) UISegmentedControl *segment;
@property (nonatomic, strong) CHomeHeaderView *headerView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CHomeBackgroudColor;
    [self initSubViews];
}

- (void)initSubViews {
    [self.view addSubview:self.navigationBar];
    [self.navigationBar addSubview:self.segment];
    [self.view addSubview:self.headerView];
    [self.view layoutIfNeeded];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    _navigationBar.width = self.view.width;
    _navigationBar.height = CNavigationBarHeight;
    
    _segment.width = CHomeSegmentWidth;
    _segment.height = CHomeSegmentHeight;
    _segment.top = StatusBarHeight + CHomeItemInset;
    _segment.centerX = self.view.width / 2.0;
    
    _headerView.width = self.view.width - CHomeLeft * 2;
    _headerView.height = CHomeHeaderHeight;
    _headerView.top = _navigationBar.bottom + CHomeViewMagin;
    _headerView.left = CHomeLeft;
}

- (UIView *)navigationBar {
    if (!_navigationBar) {
        _navigationBar = [[UIView alloc] initWithFrame:CGRectZero];
        _navigationBar.backgroundColor = CNavigationBarBackgroudColor;
    }
    
    return _navigationBar;
}

- (UISegmentedControl *)segment {
    if (!_segment) {
        _segment = [[UISegmentedControl alloc] initWithItems:@[@"白酒", @"啤酒", @"红酒"]];
        _segment.tintColor = CThemeBlueColor;
        [_segment addTarget:self action:@selector(didChangeValueOfSegmentControl:) forControlEvents:UIControlEventValueChanged];
        _segment.selectedSegmentIndex = 0;
    }
    
    return _segment;
}

- (CHomeHeaderView *)headerView {
    if (!_headerView) {
        _headerView = [[CHomeHeaderView alloc] initWithFrame:CGRectZero];
    }

    return _headerView;
}

- (void)didChangeValueOfSegmentControl:(UISegmentedControl *)segment {
    switch (segment.selectedSegmentIndex) {
        case 0: {
            
            break;
        }
        case 1: {
            break;
        }
        case 2: {
            break;
        }
        default:
            break;
    }
}

@end
