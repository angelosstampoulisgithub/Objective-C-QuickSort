//
//  ObjectiveCQuickSort.m
//  Objective-C-QuickSort
//
//  Created by Angelos Staboulis on 8/10/24.
//

#import "ObjectiveCQuickSort.h"

@implementation ObjectiveCQuickSort
- (NSArray *)quickSort:(NSArray *)sortArray {
    if (sortArray.count < 1) {
        return @[];
    }
    NSInteger middle = [sortArray[sortArray.count / 2] integerValue];
    NSPredicate *smallArray = [NSPredicate predicateWithFormat:@"intValue < %d", middle];
    NSPredicate *equalArray = [NSPredicate predicateWithFormat:@"intValue = %d", middle];
    NSPredicate *largeArray = [NSPredicate predicateWithFormat:@"intValue > %d", middle];
    
    NSArray *small = [sortArray filteredArrayUsingPredicate:smallArray];
    NSArray *equal = [sortArray filteredArrayUsingPredicate:equalArray];
    NSArray *large = [sortArray filteredArrayUsingPredicate:largeArray];
    
    return [[[self quickSort:small] arrayByAddingObjectsFromArray:equal] arrayByAddingObjectsFromArray:[self quickSort:large]];
}
@end
