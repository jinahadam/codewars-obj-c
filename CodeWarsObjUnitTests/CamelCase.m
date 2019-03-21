//
//  CamelCase.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 22/3/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CamelCase : XCTestCase

@end

@implementation CamelCase

NSString *toCamelCase(NSString *s) {
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"-_"];
    NSMutableArray *words = [[s componentsSeparatedByCharactersInSet:set] mutableCopy];
    if ([words count] == 0) return s;
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[words count]];
    [result addObject:[[words firstObject] lowercaseString]];
    [words removeObjectAtIndex:0];
    for (NSString* word in words) {
        [result addObject:[word capitalizedString]];
    }
    return [result componentsJoinedByString:@""];
}

- (void)testDescriptionExamples
{
    XCTAssertTrue([@"theStealthWarrior" isEqualToString:toCamelCase(@"the-stealth-warrior")]);
    XCTAssertTrue([@"theStealthWarrior" isEqualToString:toCamelCase(@"The_Stealth_Warrior")]);
}


@end
