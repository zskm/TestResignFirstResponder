//
//  UIControl+ResignFirstResponder.m
//  TestResignFirstResponder
//
//  Created by zskm on 16/6/24.
//  Copyright © 2016年 zskm. All rights reserved.
//

#import "UIControl+ResignFirstResponder.h"
#import <objc/runtime.h>

@implementation UIControl (ResignFirstResponder)

+ (void)load
{
    Method originalMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method expectMethod = class_getInstanceMethod(self, @selector(resignFirstResponderWithOriginalAction:to:forEvent:));
    method_exchangeImplementations(originalMethod, expectMethod);
}

- (void)resignFirstResponderWithOriginalAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
    [self resignFirstResponderWithOriginalAction:action to:target forEvent:event];
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
