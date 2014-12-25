//
//  UIButton+AMProgress.m
//
//  Created by Aamer Khalid on 25/12/2014.
//

#import "UIButton+AMProgress.h"

@implementation UIButton (AMProgress)
-(void)addCircularAnimationWithFrame:(CGRect)Frame
{
    BKECircularProgressView *_bProgressView = [[BKECircularProgressView alloc] initWithFrame:Frame];
    [_bProgressView setProgressTintColor:[UIColor colorWithRed:224.0/255.0 green:80.0/255.0 blue:15.0/255.0 alpha:1]];
    [_bProgressView setBackgroundTintColor:[UIColor whiteColor]];
    [_bProgressView setLineWidth:3.0f];
    [_bProgressView setProgress:0.0f];
    [self addSubview:_bProgressView];
    
    NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:0.8 block:^{
        
        // Show animation
        [UIView animateWithDuration:0.3f
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             [_bProgressView setProgress:_bProgressView.progress+0.08];
                             
                         }
                         completion:nil];
        
        
        if (_bProgressView.progress >= 1.0) {
            [timer invalidate];
            [_bProgressView removeFromSuperview];
            self.userInteractionEnabled=YES;
        }
        
    } repeats:YES];
    
}

-(void)setCircularProgress:(CGFloat)progress
{
    for (BKECircularProgressView *iButton in self.subviews) {
        
        if ([iButton isKindOfClass:[BKECircularProgressView class]]) {
            
            
            [iButton setProgress:progress];
        }
    }
    
    
}

@end
