//
//  JumpingNumber.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 9/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface JumpingNumber : XCTestCase

@end

@implementation JumpingNumber

NSString *jumping_number(int n) {
    int num = n;
    int lastNumber = -1;
    while (num) {
        if (lastNumber != -1) {
            if (abs((num % 10) - lastNumber) != 1) {
                return @"Not!!";
            }
        }
        lastNumber = num % 10;
        num /= 10;
    }
    return @"Jumping!!";
}

- (void)testsSingleDigitNumbers
{
    XCTAssertEqual(@"Jumping!!", jumping_number(1));
    XCTAssertEqual(@"Jumping!!", jumping_number(7));
    XCTAssertEqual(@"Jumping!!", jumping_number(9));
}
- (void)testDoubleDigitNumbers
{
    XCTAssertEqual(@"Jumping!!", jumping_number(23));
    XCTAssertEqual(@"Jumping!!", jumping_number(32));
    XCTAssertEqual(@"Not!!", jumping_number(79));
    XCTAssertEqual(@"Jumping!!", jumping_number(98));
}
- (void)testHugeNumbers
{
    XCTAssertEqual(@"Jumping!!", jumping_number(8987));
    XCTAssertEqual(@"Jumping!!", jumping_number(4343456));
    XCTAssertEqual(@"Jumping!!", jumping_number(98789876));
}
@end
