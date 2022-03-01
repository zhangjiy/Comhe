//
//  CHomeHeaderView.m
//  Comha
//
//  Created by jiyang on 2022/2/28.
//

#import "CHomeHeaderView.h"
#import "CHomeHeaderListView.h"

@interface CHomeHeaderView ()
@property (nonatomic, strong) CHomeHeaderListView *listView;
@end

@implementation CHomeHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubviews];
    }
    
    return self;
}

- (void)initSubviews {
    [self addSubview:self.listView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.listView.frame = self.bounds;
}

- (CHomeHeaderListView *)listView {
    if (!_listView) {
        _listView = [[CHomeHeaderListView alloc] initWithFrame:CGRectZero];
    }
    
    return _listView;
}

@end
