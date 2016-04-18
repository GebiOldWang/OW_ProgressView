//
//  OW_ProgressView.h
//  OW_ProgressViewExcenple
//
//  Created by 上海银来（集团）有限公司 on 16/4/18.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface OW_ProgressView : UIView

@property (nonatomic,strong,readonly) CAShapeLayer * backlayer;
@property (nonatomic,strong,readonly) UIBezierPath * backpath;

@property (nonatomic,strong,readonly) CAShapeLayer * progresslayer;
@property (nonatomic,strong,readonly) UIBezierPath * progresspath;

@property (nonatomic,strong) UIColor * backcolor;
@property (nonatomic,strong) UIColor * progresscolor;

@property (nonatomic) float progress;
@property (nonatomic) float progresswidth;

-(void)ow_setProgress:(float)progress animated:(BOOL)animated;
+(instancetype)ow_ProgressView;

@end
