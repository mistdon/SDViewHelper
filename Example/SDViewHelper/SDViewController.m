//
//  SDViewController.m
//  SDViewHelper
//
//  Created by momo13014 on 11/15/2017.
//  Copyright (c) 2017 momo13014. All rights reserved.
//

#import "SDViewController.h"
#import <SDViewHelper/UIViewController+VCLoader.h>

@interface SDViewController ()

@end

@implementation SDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld - %ld",(long)indexPath.section, (long)indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc;
    if(indexPath.row == 0){
        vc = [UIViewController sd_viewController:@"SDLoaderTestViewController" arguments:@{@"type":@"hello"}];
    }else{
        vc = [UIViewController sd_viewController:@"SDSBLoaderViewController" inStoryboard:@"Main" arguments:@{@"flag":@(1)}];
    }
    [self.navigationController showViewController:vc sender:nil];
}

@end
