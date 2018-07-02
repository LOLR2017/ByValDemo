//
//  FourthViewController.m
//  ByValDemo
//
//  Created by 赵文龙 on 2018/6/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "FourthViewController.h"
#import "FirstViewController.h"
#import "ValueObject.h"

@interface FourthViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.label.text = [ValueObject shareValueObject].value;
}

- (IBAction)sureClick:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notification" object:nil userInfo:@{@"value":@"我是通知传值过来的"}];
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)pushClick:(UIButton *)sender {
    FirstViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FirstViewController"];
    [self.navigationController pushViewController:vc animated:YES];
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
