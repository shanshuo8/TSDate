//
//  TSScheduler.h
//  Pods-TSScheduler_Example
//
//  Created by 夏星星 on 2021/8/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSScheduler : NSObject

/**
 TSDate
 */
/// 传进来的日期是否是今天
/// @param date 日期
+ (BOOL)isTodayOfDate:(NSDate *)date;

/// 传进来的日期是否是昨天
/// @param date 日期
+ (BOOL)isYesterdayOfDate:(NSDate *)date;

/// 传进来的日期是否是明天
/// @param date 日期
+ (BOOL)isTomorrowOfDate:(NSDate *)date;

/// 获取传进来date的毫秒时间戳
/// @param date date
+ (NSTimeInterval)millisecondTimeStampOfDate:(NSDate *)date;

/// 获取当前时间毫秒时间戳
+ (NSTimeInterval)currentMillisecondTimeStamp;

/// 获取传进来date的毫秒时间戳字符串
/// @param date date
+ (NSString *)millisecondTimeStampStringOfDate:(NSDate *)date;

/// 获取当前时间毫秒时间戳
+ (NSString *)currentMillisecondTimeStampString;

/// 通过ms时间戳获取NSDate
/// @param millisecondTimeStamp 毫秒时间戳
+ (NSDate *)dateOfMillisecondTimeStamp:(NSTimeInterval)millisecondTimeStamp;


/// 通过ms时间戳字符串获取NSDate
/// @param millisecondTimeStampString 毫秒时间戳字符串
+ (NSDate *)dateOfMillisecondTimeStampString:(NSString *)millisecondTimeStampString;

/// 通过日期字符串和字符格式字符串获取NSDate
/// @param dateString 日期字符串
/// @param dateFormatterString 日期格式字符串
+ (NSDate *)getDateWithDateString:(NSString *)dateString dateFormatterString:(NSString *)dateFormatterString;

/// 通过yyyy-MM-dd日期格式的字符串获取NSDate
/// @param dateString yyyy-MM-dd日期格式的字符串
+ (NSDate *)getDateWithYearMonthDayTypeDateString:(NSString *)dateString;

/// 通过date和dateFormatterString获取dateString
/// @param date date
/// @param dateFormatterString dateFormatterString
+ (NSString *)getDateStringWithDate:(NSDate *)date dateFormatterString:(NSString *)dateFormatterString;

/// 通过date获取"yyyy-MM-dd"格式的日期字符串
/// @param date date
+ (NSString *)getYearMonthDayTypeDateStringWithDate:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
