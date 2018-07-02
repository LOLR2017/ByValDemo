//
//  FirstViewController.m
//  ByValDemo
//
//  Created by 赵文龙 on 2018/6/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ValueObject.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pushClick:(UIButton *)sender {
    SecondViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SecondViewController"];
    vc.value = @"我是正向传值过来的";
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)sureClick:(UIButton *)sender {
    [ValueObject shareValueObject].value = @"这是修改后的单例值";
    [self.navigationController popViewControllerAnimated:YES];
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
