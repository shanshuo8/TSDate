//
//  TSScheduler+Date.m
//  TSDate
//
//  Created by 夏星星 on 2021/8/8.
//

#import "TSScheduler+Date.h"
#import "TSDate.h"

@implementation TSScheduler (Date)
// 这个宏可以屏蔽分类覆盖基类方法的警告
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date
{
    return [TSDate isTodayOfDate:date];
}

/// 传进来的日期是否是昨天
/// @param date 日期
+ (BOOL)isYesterdayOfDate:(NSDate *)date
{
    return [TSDate isYesterdayOfDate:date];
}

/// 传进来的日期是否是明天
/// @param date 日期
+ (BOOL)isTomorrowOfDate:(NSDate *)date
{
    return [TSDate isTomorrowOfDate:date];
}

/// 获取传进来date的毫秒时间戳
/// @param date date
+ (NSTimeInterval)millisecondTimeStampOfDate:(NSDate *)date
{
    return [TSDate millisecondTimeStampOfDate:date];
}

/// 获取当前时间毫秒时间戳
+ (NSTimeInterval)currentMillisecondTimeStamp
{
    return [TSDate currentMillisecondTimeStamp];
}

/// 获取传进来date的毫秒时间戳字符串
/// @param date date
+ (NSString *)millisecondTimeStampStringOfDate:(NSDate *)date
{
    return [TSDate millisecondTimeStampStringOfDate:date];
}

/// 获取当前时间毫秒时间戳
+ (NSString *)currentMillisecondTimeStampString
{
    return [TSDate currentMillisecondTimeStampString];
}

/// 通过ms时间戳获取NSDate
/// @param millisecondTimeStamp 毫秒时间戳
+ (NSDate *)dateOfMillisecondTimeStamp:(NSTimeInterval)millisecondTimeStamp
{
    return [TSDate dateOfMillisecondTimeStamp:millisecondTimeStamp];
}

/// 通过ms时间戳字符串获取NSDate
/// @param millisecondTimeStampString 毫秒时间戳字符串
+ (NSDate *)dateOfMillisecondTimeStampString:(NSString *)millisecondTimeStampString
{
    return [TSDate dateOfMillisecondTimeStampString:millisecondTimeStampString];
}

/// 通过日期字符串和字符格式字符串获取NSDate
/// @param dateString 日期字符串
/// @param dateFormatterString 日期格式字符串
+ (NSDate *)getDateWithDateString:(NSString *)dateString dateFormatterString:(NSString *)dateFormatterString
{
    return [TSDate getDateWithDateString:dateString dateFormatterString:dateFormatterString];
}

/// 通过yyyy-MM-dd日期格式的字符串获取NSDate
/// @param dateString yyyy-MM-dd日期格式的字符串
+ (NSDate *)getDateWithYearMonthDayTypeDateString:(NSString *)dateString
{
    return [TSDate getDateWithYearMonthDayTypeDateString:dateString];
}

/// 通过date和dateFormatterString获取dateString
/// @param date date
/// @param dateFormatterString dateFormatterString
+ (NSString *)getDateStringWithDate:(NSDate *)date dateFormatterString:(NSString *)dateFormatterString
{
    return [TSDate getDateStringWithDate:date dateFormatterString:dateFormatterString];
}

/// 通过date获取"yyyy-MM-dd"格式的日期字符串
/// @param date date
+ (NSString *)getYearMonthDayTypeDateStringWithDate:(NSDate *)date
{
    return [TSDate getYearMonthDayTypeDateStringWithDate:date];
}

#pragma clang diagnostic pop
@end
