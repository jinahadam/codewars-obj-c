//
//  SpecialNumber.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 8/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>
@interface SpecialNumber : XCTestCase

@end

@implementation SpecialNumber

NSString *special_number(int n) {
    NSArray *specialNumbers = @[@0,@1,@2,@3,@4,@5];
    int num = n;
    bool special = true;
    while (num) {
        if (![specialNumbers containsObject:[NSNumber numberWithInt:num % 10]]) {
            special = false;
        }
        num /= 10;
    }

    if (special) {
        return @"Special!!";
    }
    return @"NOT!!";
}


- (void)testSingleDigitNumbers
{
    XCTAssertEqual(@"Special!!", special_number(2));
    XCTAssertEqual(@"Special!!", special_number(3));
    XCTAssertEqual(@"NOT!!", special_number(7));
    XCTAssertEqual(@"NOT!!", special_number(9));
}
- (void)testDoubleDigitNumbers
{
    XCTAssertEqual(@"Special!!", special_number(23));
    XCTAssertEqual(@"NOT!!", special_number(79));
    XCTAssertEqual(@"Special!!", special_number(32));
    XCTAssertEqual(@"NOT!!", special_number(39));
    XCTAssertEqual(@"Special!!", special_number(55));
}
- (void)testLargeNumbers
{
    XCTAssertEqual(@"Special!!", special_number(513));
    XCTAssertEqual(@"NOT!!", special_number(709));
    XCTAssertEqual(@"NOT!!", special_number(538));
}
- (void)testHugeNumbers
{
    XCTAssertEqual(@"Special!!", special_number(53532));
    XCTAssertEqual(@"NOT!!", special_number(970569));
    XCTAssertEqual(@"Special!!", special_number(11350224));
}

@end
