//
//  TSDate.m
//  TSDate
//
//  Created by 夏星星 on 2021/8/7.
//

#import "TSDate.h"

@implementation TSDate

#pragma mark - public method
/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date
{
    if (date == nil) return NO;
    // 获得当前时间的年月日
    NSDateComponents *nowComponents = [self getYearMonthDayDateComponentsWithDate:[NSDate date]];
    // 获得传进来时间的年月日
    NSDateComponents *dateComponents = [self getYearMonthDayDateComponentsWithDate:date];
    return (nowComponents.year == dateComponents.year) &&
           (nowComponents.month == dateComponents.month) &&
           (nowComponents.day == dateComponents.day);
}

/// 传进来的日期是否是昨天
/// @param date 日期
+ (BOOL)isYesterdayOfDate:(NSDate *)date
{
    if (date == nil) return NO;
    // 获得当前时间的年月日
    NSDateComponents *nowComponents = [self getYearMonthDayDateComponentsWithDate:[NSDate date]];
    // 获得传进来时间的年月日
    NSDateComponents *dateComponents = [self getYearMonthDayDateComponentsWithDate:date];
    return (nowComponents.year == dateComponents.year) &&
           (nowComponents.month == dateComponents.month) &&
           (nowComponents.day - dateComponents.day == 1);
}

/// 传进来的日期是否是明天
/// @param date 日期
+ (BOOL)isTomorrowOfDate:(NSDate *)date
{
    if (date == nil) return NO;
    // 获得当前时间的年月日
    NSDateComponents *nowComponents = [self getYearMonthDayDateComponentsWithDate:[NSDate date]];
    // 获得传进来时间的年月日
    NSDateComponents *dateComponents = [self getYearMonthDayDateComponentsWithDate:date];
    return (nowComponents.year == dateComponents.year) &&
           (nowComponents.month == dateComponents.month) &&
           (dateComponents.day - nowComponents.day == 1);
}

/// 获取传进来date的毫秒时间戳
/// @param date date
+ (NSTimeInterval)millisecondTimeStampOfDate:(NSDate *)date
{
    if (date == nil) return 0;
    return [date timeIntervalSince1970] * 1000.0;
}

/// 获取当前时间毫秒时间戳
+ (NSTimeInterval)currentMillisecondTimeStamp
{
    return [[NSDate date] timeIntervalSince1970] * 1000.0;
}

/// 获取传进来date的毫秒时间戳字符串
/// @param date date
+ (NSString *)millisecondTimeStampStringOfDate:(NSDate *)date
{
    return [NSString stringWithFormat:@"%ld", (NSInteger)[self millisecondTimeStampStringOfDate:date]];
}

/// 获取当前时间毫秒时间戳
+ (NSString *)currentMillisecondTimeStampString
{
    return [NSString stringWithFormat:@"%ld", (NSInteger)[self currentMillisecondTimeStamp]];
}

/// 通过ms时间戳获取NSDate
/// @param millisecondTimeStamp 毫秒时间戳
+ (NSDate *)dateOfMillisecondTimeStamp:(NSTimeInterval)millisecondTimeStamp
{
    return [NSDate dateWithTimeIntervalSince1970:millisecondTimeStamp/1000.0];
}


/// 通过ms时间戳字符串获取NSDate
/// @param millisecondTimeStampString 毫秒时间戳字符串
+ (NSDate *)dateOfMillisecondTimeStampString:(NSString *)millisecondTimeStampString
{
    return [NSDate dateWithTimeIntervalSince1970:millisecondTimeStampString.integerValue/1000.0];
}

/// 通过日期字符串和字符格式字符串获取NSDate
/// @param dateString 日期字符串
/// @param dateFormatterString 日期格式字符串
+ (NSDate *)getDateWithDateString:(NSString *)dateString dateFormatterString:(NSString *)dateFormatterString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormatterString];
    return [dateFormatter dateFromString:dateString];
}

/// 通过yyyy-MM-dd日期格式的字符串获取NSDate
/// @param dateString yyyy-MM-dd日期格式的字符串
+ (NSDate *)getDateWithYearMonthDayTypeDateString:(NSString *)dateString
{
    return [self getDateWithDateString:dateString dateFormatterString:@"yyyy-MM-dd"];
}

/// 通过date和dateFormatterString获取dateString
/// @param date date
/// @param dateFormatterString dateFormatterString
+ (NSString *)getDateStringWithDate:(NSDate *)date dateFormatterString:(NSString *)dateFormatterString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormatterString];
    return [dateFormatter stringFromDate:date];
}

/// 通过date获取"yyyy-MM-dd"格式的日期字符串
/// @param date date
+ (NSString *)getYearMonthDayTypeDateStringWithDate:(NSDate *)date
{
    return [self getDateStringWithDate:date dateFormatterString:@"yyyy-MM-dd"];
}

#pragma mark - private method
+ (NSDateComponents *)getYearMonthDayDateComponentsWithDate:(NSDate *)date
{
    if (date == nil) return nil;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    return [calendar components:unit fromDate:date];
}

@end
