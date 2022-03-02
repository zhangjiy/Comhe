//
//  CHomeMoidView.m
//  Comhe
//
//  Created by jiyang on 2022/3/1.
//

#import "CHomeMoidView.h"
#import "UIView+JYFrame.h"

@interface CHomeMoidView ()

@property (nonatomic, strong) UIButton *contentSizeButton;
@property (nonatomic, strong) UIButton *contentPureButton;

@end

@implementation CHomeMoidView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubviews];
    }
    
    return self;
}

- (void)initSubviews {
    [self addSubview:self.contentSizeButton];
    [self addSubview:self.contentPureButton];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _contentSizeButton.size = CGSizeMake(44, 88);
    
    _contentPureButton.size = CGSizeMake(33, 88);
    _contentPureButton.top = _contentSizeButton.bottom;
    
}

- (UIButton *)contentSizeButton {
    if (!_contentSizeButton) {
        _contentSizeButton = [[UIButton alloc] initWithFrame:CGRectZero];
        [_contentSizeButton setTitle:@"500毫升" forState:UIControlStateNormal];
    }
    
    return _contentSizeButton;
}

- (UIButton *)contentPureButton {
    if (!_contentPureButton) {
        _contentPureButton = [[UIButton alloc] initWithFrame:CGRectZero];
        [_contentPureButton setTitle:@"5度" forState:UIControlStateNormal];
    }
    
    return _contentPureButton;
}

@end
