//
//  SDLoaderTestViewController.m
//  SDViewHelper_Example
//
//  Created by shendong on 2017/11/15.
//  Copyright © 2017年 momo13014. All rights reserved.
//

#import "SDLoaderTestViewController.h"

@interface SDLoaderTestViewController ()

@end

@implementation SDLoaderTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"%@",self.type);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
