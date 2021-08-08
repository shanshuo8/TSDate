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
#pragma clang diagnostic pop
@end
