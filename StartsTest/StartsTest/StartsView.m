//
//  StartsView.m
//  StartsTest
//
//  Created by 李聪会 on 2016/10/11.
//  Copyright © 2016年 李聪会. All rights reserved.
//

#import "StartsView.h"
@interface StartsView()


@end

@implementation StartsView

- (void)addSwipeGesture
{
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self.panView addGestureRecognizer:panGesture];
    
    UITapGestureRecognizer *tapPan = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    [self.panView addGestureRecognizer:tapPan];
}

//轻扫手势触发方法
-(void)panGesture:(id)sender
{
    UISwipeGestureRecognizer *pan = sender;
    CGPoint point = [pan locationInView:self];
   
    if (pan.state== UIGestureRecognizerStateBegan )
    {
       
    }else if (pan.state== UIGestureRecognizerStateEnded)
    {
       
    }else
    {
        [self.StartsBtns enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            UIButton *btn = obj;
            
            if (btn.frame.origin.x<=point.x) {
                btn.enabled = NO;
            }else
            {
                btn.enabled = YES;
            }
        }];
   
    }
    UIButton *btn = self.StartsBtns[0];
    btn.enabled = NO;
    
}
-(void)tapGesture:(id)sender
{
    UISwipeGestureRecognizer *pan = sender;
        CGPoint point = [pan locationInView:self];
        [self.StartsBtns enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            UIButton *btn = obj;
            if (btn.frame.origin.x<point.x) {
                btn.enabled = NO;
            }else
            {
                btn.enabled = YES;
            }
        }];
   

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
@end
