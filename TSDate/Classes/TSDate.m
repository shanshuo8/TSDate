//
//  TSDate.m
//  TSDate
//
//  Created by 夏星星 on 2021/8/7.
//

#import "TSDate.h"

@implementation TSDate

/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date
{
    if (date == nil) return NO;
    return YES;
}

@end
