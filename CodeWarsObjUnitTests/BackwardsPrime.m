//
//  BackwardsPrime.m
//  CodeWarsObjUnitTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

#import <XCTest/XCTest.h>

@implementation NSString (Reverse)

-(NSString*)reverse {
    char* cstring = (char*)[self UTF8String];
    int length = [self length]-1;

    int i=0;

    while (i<=length) {
        unichar tmp = cstring[i];
        cstring[i] = cstring[length];
        cstring[length] = tmp;
        i++;
        length--;
    }

    return [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];

}
@end

@interface BackwardsPrime : XCTestCase

@end


@implementation BackwardsPrime

-(BOOL)isPrime: (int) number {
    if (number == 2 || number == 3) {
        return true;
    }
    for (int i = 3; i < number; i ++) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

-(NSArray *)backwardsPrimesStartingWith: (int) start AndStoping:(int) end {
    NSMutableArray *result = [NSMutableArray array];
    for (int number = start; number <= end; number++) {
        int reverseInt = [[[NSString stringWithFormat:@"%d", number] reverse] intValue];
        if (number == reverseInt || number < 11 ) {
            continue;
        }
        if ([self isPrime:number] && [self isPrime:reverseInt]) {
            [result addObject:[NSNumber numberWithInt:number]];
        }
    }
    return result;
}

- (void)testBackwardsPrime {

     NSArray *a =  @[@13, @17, @31, @37, @71, @73, @79, @97];
     XCTAssertTrue([[self backwardsPrimesStartingWith:1 AndStoping:100] isEqualToArray:a]);

     NSArray *b = @[@13, @17, @31];
     XCTAssertTrue([[self backwardsPrimesStartingWith:13 AndStoping:31] isEqualToArray:b]);

     NSArray *c = @[@107, @113, @149, @157, @167, @179, @199];
     XCTAssertTrue([[self backwardsPrimesStartingWith:101 AndStoping:199] isEqualToArray:c]);

     NSArray *d = @[@311, @337, @347, @359, @389];
     XCTAssertTrue([[self backwardsPrimesStartingWith:301 AndStoping:399] isEqualToArray:d]);

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
