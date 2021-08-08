//
//  TSDateTests.m
//  TSDateTests
//
//  Created by 1447107681@qq.com on 08/07/2021.
//  Copyright (c) 2021 1447107681@qq.com. All rights reserved.
//

@import XCTest;
#import "TSDate.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSDate *todayDate = [TSDate getDateWithYearMonthDayTypeDateString:@"2021-08-08"];
    NSDate *yesterdayDate = [TSDate getDateWithYearMonthDayTypeDateString:@"2021-08-07"];
    NSDate *tomorrowDate = [TSDate getDateWithYearMonthDayTypeDateString:@"2021-08-09"];
    XCTAssert([TSDate isTodayOfDate:todayDate]);
    XCTAssert([TSDate isYesterdayOfDate:yesterdayDate]);
    XCTAssert([TSDate isTomorrowOfDate:tomorrowDate]);
    XCTAssert([[TSDate getYearMonthDayTypeDateStringWithDate:todayDate] isEqualToString:@"2021-08-08"]);
}

@end

