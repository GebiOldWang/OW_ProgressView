//
//  OW_ProgressView.m
//  OW_ProgressViewExcenple
//
//  Created by 上海银来（集团）有限公司 on 16/4/18.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import "OW_ProgressView.h"

@implementation OW_ProgressView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        _backlayer = [CAShapeLayer new];
        [self.layer addSublayer:_backlayer];
        _backlayer.fillColor = nil;
        _backlayer.frame = self.bounds;
        
        _progresslayer = [CAShapeLayer new];
        [self.layer addSublayer:_progresslayer];
        _progresslayer.fillColor = nil;
        _progresslayer.frame = self.bounds;
        
    }
    return self;
}

+(instancetype)ow_ProgressView
{
    return [[self alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
}

-(void)setBack
{
    _backpath = [UIBezierPath bezierPathWithArcCenter:self.center radius:(self.bounds.size.width - _progresswidth)/ 2 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    _backlayer.path = _backpath.CGPath;
    
}

-(void)setProgress
{
    _progresspath = [UIBezierPath bezierPathWithArcCenter:self.center radius:(self.bounds.size.width - _progresswidth)/ 2 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    _progresslayer.path = _progresspath.CGPath;
}

-(void)setProgresswidth:(float)progresswidth
{
    _progresswidth = progresswidth;
    _backlayer.lineWidth = _progresswidth;
    _progresslayer.lineWidth = _progresswidth;
    
    [self setBack];
    [self setProgress];
}

-(void)setBackcolor:(UIColor *)backcolor
{
    _backlayer.strokeColor = backcolor.CGColor;
}

-(void)setProgresscolor:(UIColor *)progresscolor
{
    _progresslayer.strokeColor = progresscolor.CGColor;
}
/**
 *  draw
 *
 *  @param progress no animation
 */
-(void)setProgress:(float)progress
{
    _progress = progress;
    [self setProgress];
}
/**
 *  draw
 *
 *  @param progress have animation
 *  @param animated yes
 */
-(void)ow_setProgress:(float)progress animated:(BOOL)animated
{
    _progress = progress;
    
    if (animated) {
        CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        animation.fromValue = [NSNumber numberWithFloat:0.0];
        animation.toValue = [NSNumber numberWithFloat:_progress];
        _progresslayer.strokeEnd = _progress;
        
        animation.duration = _progress;
        [_progresslayer addAnimation:animation forKey:@"strokeEndAnimation"];
    }
    
}

@end
