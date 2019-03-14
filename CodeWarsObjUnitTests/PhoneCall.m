//
//  PhoneCall.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 9/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface PhoneCall : XCTestCase

@end

@implementation PhoneCall

int phoneCall(int min1, int min2_10, int min11, int s) {
    if (s < min1) {
        return s/min1;
    }
    if (s < (min2_10 * 9) + min1) {
        int k = s - min1;
        return 1 + (k/min2_10);
    }
    int k = s - min1;
    int j = k - (min2_10 * 9);
    return 10 + (j/min11);
}

- (void) testsExamples
{
    XCTAssertEqual(9, phoneCall(9, 8, 6, 78));
    XCTAssertEqual(14, phoneCall(3, 1, 2, 20));
    XCTAssertEqual(1, phoneCall(2, 2, 1, 2));
    XCTAssertEqual(11, phoneCall(10, 1, 2, 22));
    XCTAssertEqual(14, phoneCall(2, 2, 1, 24));
    XCTAssertEqual(3, phoneCall(1, 2, 1, 6));
}



@end
