//
//  main.m
//  NSNumberStress_test
//
//  Created by Gregory John Casamento on 6/8/24.
//

// File: main.m
#import <Foundation/Foundation.h>

static unsigned long seed;

void initRandomSeed(long firstSeed)
{
    seed = firstSeed;
}

float nextRandomFloat(void)
{
    return (((seed= 1664525*seed + 1013904223)>>16) / (float)0x10000);
}

void stressTestNSNumber(void)
{
    initRandomSeed(19);

    puts("\n");
    
    // Perform retain and release in a loop
    while (YES)
    {
        @autoreleasepool 
        {
            float n = nextRandomFloat();
            NSNumber *num = [NSNumber numberWithFloat: n];
            printf("Float = %f\r", [num floatValue]);
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
