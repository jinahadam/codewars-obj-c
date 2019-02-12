//
//  SumWithoutMaxMin.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 12/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/Foundation.h>

@interface SumWithoutMaxMin : XCTestCase

@end

@implementation SumWithoutMaxMin

int sum(int* numbers, int numbersCount) {
    int sum = 0;
    int max = numbers[0];
    int min = numbers[0];

    if (numbersCount < 2) { return 0; }

    for (int i = 0; i < numbersCount; i++) {
        sum += numbers[i];
        if (numbers[i] < min) {
            min = numbers[i];
        }

        if (numbers[i] > max) {
            max = numbers[i];
        }
    }

    return sum - min - max;
}

- (void) testsBasics
{
    int array1[] = { 6, 2, 1, 8, 10 };
    XCTAssertEqual(sum(array1, 5), 16);

    int array2[] = { 6 };
    XCTAssertEqual(sum(array2, 1), 0);

    int array5[] = { -6, -20, -1, -10, -12 };
    XCTAssertEqual(sum(array5, 5), -28);
}

@end

