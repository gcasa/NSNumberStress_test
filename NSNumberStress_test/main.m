//
//  main.m
//  NSNumberStress_test
//
//  Created by Gregory John Casamento on 6/8/24.
//

// File: main.m
#import <Foundation/Foundation.h>

void stressTestNSNumber() {
    // Create an NSNumber object
    NSNumber *number = [[NSNumber alloc] initWithInt:42];

    // Get the start time
    NSDate *startTime = [NSDate date];
    NSTimeInterval testDuration = 2 * 24 * 60 * 60; // 2 days in seconds

    // Perform retain and release in a loop
    while ([[NSDate date] timeIntervalSinceDate:startTime] < testDuration) {
        for (int i = 0; i < 1000; i++) {
            [number retain];
            [number release];
        }
    }

    // Release the initial reference
    [number release];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Starting stress test for NSNumber...");

        // Call the stress test function
        stressTestNSNumber();

        NSLog(@"Stress test completed.");
    }
    return 0;
}
