//
//  CHomeHeaderCollectionViewCell.m
//  Comha
//
//  Created by jiyang on 2022/2/28.
//

#import "CHomeHeaderCollectionViewCell.h"
#import "UIView+JYFrame.h"

@interface CHomeHeaderCollectionViewCell ()

@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;

@end

@implementation CHomeHeaderCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initWithSubViews];
    }
    return self;
}

- (void)updateViewWithModel:(CDrinkItem *)item {
    self.titleLabel.text = item.title;
    self.descLabel.text = item.desc;
}

- (void)initWithSubViews {
    [self.contentView addSubview:self.containerView];
    [self.contentView addSubview:self.imageView];
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.descLabel];
}

- (UIView *)containerView {
    if (!_containerView) {
        _containerView = [[UIView alloc] initWithFrame:CGRectZero];
        _containerView.backgroundColor = CItemBackgroudColor;
        _containerView.layer.masksToBounds = YES;
        _containerView.layer.cornerRadius = CItemCornerRadius;
    }
    
    return _containerView;
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.font = [UIFont systemFontOfSize:14 weight:UIFontWeightMedium];
    }
    
    return _titleLabel;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.textColor = [UIColor darkGrayColor];
        _descLabel.font = [UIFont systemFontOfSize:13 weight:UIFontWeightMedium];
    }
    
    return _descLabel;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _containerView.frame = self.contentView.bounds;
    
    _imageView.left = CHomeItemInset;
    _imageView.top = CHomeItemInset;
    _imageView.size = CHomeItemImageSize;
    
    [_titleLabel sizeToFit];
    _titleLabel.left = CHomeItemInset;
    _titleLabel.top = _imageView.bottom + CHomeItemInset;
    
    [_descLabel sizeToFit];
    _descLabel.left = CHomeItemInset;
    _descLabel.top = _titleLabel.bottom + CHomeItemInset;
}

@end
