//
//  CPrefixHeader.h
//  Comhe
//
//  Created by jiyang on 2022/2/28.
//

#ifndef CPrefixHeader_h
#define CPrefixHeader_h

#import "UIColor+Extensions.h"
#import "UIDeviceHelper.h"

#define CNavigationBarHeight 110
#define CHomeSegmentWidth 200
#define CHomeSegmentHeight 25
#define CHomeSegmentTop 10

#define CHomeViewMagin 20

#define CHomeHeaderHeight 160
#define CHomeHeaderItemSize CGSizeMake(116, 116)
#define CHomeHeaderLineSpacing 26
#define CHomeHeaderTop 88
#define CHomeLeft 14

#define CHomeItemInset 10
#define CHomeItemImageSize CGSizeMake(44, 44)

#define CHomeBackgroudColor [UIColor wbt_ColorWithHexString:@"#F5F5F5"]

#define CItemBackgroudColor [UIColor wbt_ColorWithHexString:@"#FFFFFF"]

#define CNavigationBarBackgroudColor [UIColor wbt_ColorWithHexString:@"#FFFFFF"]

#define CThemeBlueColor [UIColor wbt_ColorWithHexString:@"#4682B4"]

#define CItemCornerRadius 8

#define StatusBarHeight  [UIDeviceHelper statusBarHeight]

#define NavigationBarHeight (JYStatusBarHeight + 44)

#endif /* CPrefixHeader_h */
