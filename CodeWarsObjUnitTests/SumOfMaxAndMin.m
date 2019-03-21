//
//  SumOfMaxAndMin.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 14/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SumOfMaxAndMin : XCTestCase

@end

@implementation SumOfMaxAndMin

int sum2(int* numbers, int numbersCount)
{
    if (numbersCount < 3) { return 0; }
    int min = INT_MAX;
    int max = INT_MIN;
    int sum = 0;
    for (int i = 0; i < numbersCount; i++ ) {
        if (numbers[i] < min) {
            min = numbers[i];
        }
        if (numbers[i] > max) {
            max = numbers[i];
        }

        sum += numbers[i];
    }
    return sum - min - max;
}

- (void) testsBasics
{
    int array1[] = { 6, 2, 1, 8, 10 };
    XCTAssertEqual(16, sum2(array1, 5));

    int array2[] = { 6 };
    XCTAssertEqual(0, sum2(array2, 1));

    int array3[] = { 6, 7 };
    XCTAssertEqual(0, sum2(array3, 2));

    int array4[] = { 6, 0, 1, 10, 10 };
    XCTAssertEqual(17, sum2(array4, 5));

    int array5[] = { -6, -20, -1, -10, -12 };
    XCTAssertEqual(-28, sum2(array5, 5));

    int array6[] = { -6, 20, -1, 10, -12 };
    XCTAssertEqual(3, sum2(array6, 5));

    int array7[] = { };
    XCTAssertEqual(0, sum2(array7, 0));
}

@end
