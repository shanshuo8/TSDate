//
//  TSDate.h
//  TSDate
//
//  Created by 夏星星 on 2021/8/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSDate : NSObject

/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
