//
//  ViewController.m
//  OW_ProgressViewExcenple
//
//  Created by 上海银来（集团）有限公司 on 16/4/18.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import "ViewController.h"
#import "OW_ProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OW_ProgressView * progress = [OW_ProgressView ow_ProgressView];
    progress.progresswidth = 2;
    progress.progresscolor = [UIColor redColor];
    progress.backcolor = [UIColor yellowColor];
    [progress ow_setProgress:0.75 animated:YES];
    [self.view addSubview:progress];
}


@end
