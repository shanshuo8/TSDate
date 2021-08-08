//
//  TSScheduler.m
//  Pods-TSScheduler_Example
//
//  Created by 夏星星 on 2021/8/7.
//

#import "TSScheduler.h"

@implementation TSScheduler

/**
 TSDate
 */
/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date
{
    return NO;
}

/// 传进来的日期是否是昨天
/// @param date 日期
+ (BOOL)isYesterdayOfDate:(NSDate *)date
{
    return NO;
}

/// 传进来的日期是否是明天
/// @param date 日期
+ (BOOL)isTomorrowOfDate:(NSDate *)date
{
    return NO;
}

/// 获取传进来date的毫秒时间戳
/// @param date date
+ (NSTimeInterval)millisecondTimeStampOfDate:(NSDate *)date
{
    return 0;
}

/// 获取当前时间毫秒时间戳
+ (NSTimeInterval)currentMillisecondTimeStamp
{
    return 0;
}

/// 获取传进来date的毫秒时间戳字符串
/// @param date date
+ (NSString *)millisecondTimeStampStringOfDate:(NSDate *)date
{
    return nil;
}

/// 获取当前时间毫秒时间戳
+ (NSString *)currentMillisecondTimeStampString
{
    return nil;
}

/// 通过ms时间戳获取NSDate
/// @param millisecondTimeStamp 毫秒时间戳
+ (NSDate *)dateOfMillisecondTimeStamp:(NSTimeInterval)millisecondTimeStamp
{
    return nil;
}


/// 通过ms时间戳字符串获取NSDate
/// @param millisecondTimeStampString 毫秒时间戳字符串
+ (NSDate *)dateOfMillisecondTimeStampString:(NSString *)millisecondTimeStampString
{
    return nil;
}

/// 通过日期字符串和字符格式字符串获取NSDate
/// @param dateString 日期字符串
/// @param dateFormatterString 日期格式字符串
+ (NSDate *)getDateWithDateString:(NSString *)dateString dateFormatterString:(NSString *)dateFormatterString
{
    return nil;
}

/// 通过yyyy-MM-dd日期格式的字符串获取NSDate
/// @param dateString yyyy-MM-dd日期格式的字符串
+ (NSDate *)getDateWithYearMonthDayTypeDateString:(NSString *)dateString
{
    return nil;
}

/// 通过date和dateFormatterString获取dateString
/// @param date date
/// @param dateFormatterString dateFormatterString
+ (NSString *)getDateStringWithDate:(NSDate *)date dateFormatterString:(NSString *)dateFormatterString
{
    return nil;
}

/// 通过date获取"yyyy-MM-dd"格式的日期字符串
/// @param date date
+ (NSString *)getYearMonthDayTypeDateStringWithDate:(NSDate *)date
{
    return nil;
}

@end
