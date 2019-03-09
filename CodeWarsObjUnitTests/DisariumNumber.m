//
//  DisariumNumber.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 9/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface DisariumNumber : XCTestCase

@end

@implementation DisariumNumber

NSString *disarium_number(int n) {
    int num = n;
    double i = [[NSString stringWithFormat:@"%d", n] length];
    double sum = 0;
    while (num) {
        sum += pow((double)(num % 10), i);
        num /= 10.0;
        i -= 1;
    }
    if (sum == n ) {
        return @"Disarium !!";
    }
    return @"Not !!";
}

- (void)testSmallInts
{
    XCTAssertEqual(@"Disarium !!", disarium_number(89));
    XCTAssertEqual(@"Not !!", disarium_number(564));
    XCTAssertEqual(@"Not !!", disarium_number(1024));
}
- (void)testBigInts
{
    XCTAssertEqual(@"Not !!", disarium_number(64599));
    XCTAssertEqual(@"Not !!", disarium_number(136586));
    XCTAssertEqual(@"Not !!", disarium_number(1048576));
}

@end


