//
//  CDrinkModel.h
//  Comhe
//
//  Created by jiyang on 2022/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CDrinkItem : NSObject

@property (nonatomic, strong) NSString  *title;
@property (nonatomic, strong) NSString  *desc;
@property (nonatomic, strong) NSString  *image;

@end

@interface CDrinkModel : NSObject

@property (nonatomic, strong) NSArray <CDrinkItem *> *drinkList;

@end

NS_ASSUME_NONNULL_END
