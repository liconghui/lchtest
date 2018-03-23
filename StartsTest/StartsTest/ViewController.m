//
//  ViewController.m
//  StartsTest
//
//  Created by 李聪会 on 2016/10/11.
//  Copyright © 2016年 李聪会. All rights reserved.
//

#import "ViewController.h"
#import "StartsView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    
    
    
    
    [super viewDidLoad];
    StartsView *startsView = [[[NSBundle mainBundle] loadNibNamed:@"StartsView" owner:self options:nil] objectAtIndex:0];
    startsView.frame = CGRectMake(0, 100, 300, 80);
    [startsView addSwipeGesture];
    [self.view addSubview:startsView];
    
    //liconghui shi nidaye 
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
