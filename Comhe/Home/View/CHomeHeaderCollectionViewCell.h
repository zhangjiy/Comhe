//
//  CHomeHeaderCollectionViewCell.h
//  Comha
//
//  Created by jiyang on 2022/2/28.
//

#import <UIKit/UIKit.h>
#import "CDrinkModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHomeHeaderCollectionViewCell : UICollectionViewCell
- (void)updateViewWithModel:(CDrinkItem *)item;
@end

NS_ASSUME_NONNULL_END
