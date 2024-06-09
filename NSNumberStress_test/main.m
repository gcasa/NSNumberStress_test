//
//  main.m
//  NSNumberStress_test
//
//  Created by Gregory John Casamento on 6/8/24.
//

// File: main.m
#import <Foundation/Foundation.h>

void stressTestNSNumber(void)
{
    // Create an NSNumber object
    NSNumber *number = [[NSNumber alloc] initWithInt:42];

    // Perform retain and release in a loop
    while (YES)
    {
        for (int i = 0; i < 1000; i++) {
            [number retain];
            [number release];
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Starting stress test for NSNumber...");

        // Call the stress test function
        stressTestNSNumber();
    }
    return 0;
}
