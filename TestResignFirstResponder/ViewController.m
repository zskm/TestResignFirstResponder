//
//  ViewController.m
//  TestResignFirstResponder
//
//  Created by zskm on 16/6/24.
//  Copyright © 2016年 zskm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blueButtonDidPress:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)orangeButtonDidPress:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)greenButtonDidPress:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)blackButtonDidPress:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)switch1ValueDidChange:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)switch2ValueDidChange:(id)sender
{
    NSLog(@"%s", __func__);
}

- (IBAction)passwordSecurityValueDidChange:(id)sender
{
    NSLog(@"%s", __func__);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (![[touches anyObject].view isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
}

@end
