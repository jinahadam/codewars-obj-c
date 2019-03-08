//
//  StringReverse.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 12/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/Foundation.h>


@interface StringReverse : XCTestCase

@end

@implementation StringReverse

NSString* reverse(NSString* text) {
    return [[[[text componentsSeparatedByString:@" "] reverseObjectEnumerator] allObjects] componentsJoinedByString:@" "];
}


-(void) testReverse {

    XCTAssertTrue([reverse(@"hello world") isEqualToString:@"world hello"]);
}

@end

