//
//  NSTimer+AMBlocks.h
//
//  Created by Aamer Khalid on 25/12/2014.
//

#import <Foundation/Foundation.h>

@interface NSTimer (AMBlocks)
+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
+(id)timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;

@end
