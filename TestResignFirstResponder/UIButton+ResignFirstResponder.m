//
//  UIButton+ResignFirstResponder.m
//  TestResignFirstResponder
//
//  Created by zskm on 16/6/24.
//  Copyright © 2016年 zskm. All rights reserved.
//

#import "UIButton+ResignFirstResponder.h"

@implementation UIButton (ResignFirstResponder)

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
    [super sendAction:action to:target forEvent:event];
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
