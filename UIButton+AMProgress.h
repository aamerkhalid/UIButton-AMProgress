//
//  UIButton+AMProgress.h
//
//  Created by Aamer Khalid on 25/12/2014.
//

#import <UIKit/UIKit.h>
#import "BKECircularProgressView.h"
#import "NSTimer+AMBlocks.h"


@interface UIButton (AMProgress)
-(void)addCircularAnimationWithFrame:(CGRect)Frame;
-(void)setCircularProgress:(CGFloat)progress;

@end
