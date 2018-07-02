//
//  ThirdViewController.m
//  ByValDemo
//
//  Created by 赵文龙 on 2018/6/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification:) name:@"notification" object:nil];
}

-(void)notification:(NSNotification *)info {
    self.textField.text = info.userInfo[@"value"];
}

- (IBAction)sureClick:(UIButton *)sender {
    [self.delegate finishValue:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)pushClick:(UIButton *)sender {
    FourthViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FourthViewController"];
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
