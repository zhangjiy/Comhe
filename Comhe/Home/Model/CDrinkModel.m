//
//  CDrinkModel.m
//  Comhe
//
//  Created by jiyang on 2022/3/1.
//

#import "CDrinkModel.h"

@implementation CDrinkItem

@end

@implementation CDrinkModel

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (NSArray<CDrinkItem *> *)drinkList {
    if (!_drinkList) {
        _drinkList = [self createDrinkListData];
    }
    
    return _drinkList;
}

- (NSArray *)createDrinkListData {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    CDrinkItem *item0 = [[CDrinkItem alloc] init];
    item0.title = @"今日酒量";
    item0.desc = @"2两";
    [tempArray addObject:item0];
    
    CDrinkItem *item1 = [[CDrinkItem alloc] init];
    item1.title = @"上次喝酒";
    item1.desc = @"一天前";
    [tempArray addObject:item1];
    
    CDrinkItem *item2 = [[CDrinkItem alloc] init];
    item2.title = @"今日消耗";
    item2.desc = @"RMB 100";
    [tempArray addObject:item2];
    
    
    CDrinkItem *item3 = [[CDrinkItem alloc] init];
    item3.title = @"累计喝酒";
    item3.desc = @"1吨";
    [tempArray addObject:item3];
    
    return [tempArray copy];
}

@end
