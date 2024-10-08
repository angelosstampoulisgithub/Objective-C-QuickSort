//
//  main.m
//  Objective-C-QuickSort
//
//  Created by Angelos Staboulis on 8/10/24.
//

#import <Foundation/Foundation.h>
#import "ObjectiveCQuickSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ObjectiveCQuickSort *quick = [[ObjectiveCQuickSort alloc] init];
        NSMutableArray *array = [[NSMutableArray alloc] init];
        srand((unsigned int) time(NULL));
        for(int i=0;i<10;i++){
            NSNumber *number = [NSNumber numberWithInt:(arc4random()%1000)+1];
            [array addObject:number];
        }
        for(int i=0;i<10;i++){
            NSLog(@"unsorted array item=%@",[array objectAtIndex:i]);
        }
        NSArray *sortedArray = [quick quickSort:array];
        for(int i=0;i<10;i++){
            NSLog(@"sorted array item=%@",[sortedArray objectAtIndex:i]);
        }
    }
    return 0;
}
