//
//  SecondViewController.m
//  ByValDemo
//
//  Created by 赵文龙 on 2018/6/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController () <ThirdViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (![self.value isEqualToString:@""]) {
        self.label.text = self.value;
    }
}
- (IBAction)pushClick:(UIButton *)sender {
    ThirdViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ThirdViewController"];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)finishValue:(NSString *)string {
    self.label.text = string;
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
