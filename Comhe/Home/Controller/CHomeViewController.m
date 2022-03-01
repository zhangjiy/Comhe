//
//  ViewController.m
//  Comha
//
//  Created by jiyang on 2022/2/28.
//

#import "CHomeViewController.h"
#import "CHomeHeaderView.h"

@interface CHomeViewController ()
@property (nonatomic, strong) CHomeHeaderView *headerView;
@end

@implementation CHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubViews];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)initSubViews {
    [self.view addSubview:self.headerView];
}

- (void)viewWillLayoutSubviews {
    [self viewWillLayoutSubviews];
    
//    self.headerView.width = self.view.width - CHomeLeft * 2;
//    self.headerView.height = CHomeHeaderHeight;
//    self.headerView.top = CHomeHeaderTop;
//    self.headerView.left = CHomeLeft;
}

- (CHomeHeaderView *)headerView {
    if (!_headerView) {
        _headerView = [[CHomeHeaderView alloc] initWithFrame:CGRectZero];
    }
    
    return _headerView;
}

@end
