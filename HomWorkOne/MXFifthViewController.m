//
//  MXFifthViewController.m
//  HomWorkOne
//
//  Created by longfei on 14-7-13.
//  Copyright (c) 2014年 longfei. All rights reserved.
//

#import "MXFifthViewController.h"

@interface MXFifthViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)login:(id)sender;

@end

@implementation MXFifthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(id)sender {
    if ([self.userName.text length] == 0 || [self.password.text length] == 0) {
        [self showWarning:@"请输入账号或密码!" witTitle:@"错误"];
        if ([self.userName.text length] == 0)
            [self.userName becomeFirstResponder];
        else
            [self.password becomeFirstResponder];
    }
    else if ([self.userName.text  isEqual: @"taobao"] && [self.password.text  isEqual: @"123"]){
        [self showWarning:@"登录成功!" witTitle:@"成功"];
    }
    else{
        [self showWarning:@"账号或密码错误!" witTitle:@"错误"];
    }
}

- (void)showWarning:(NSString *)warning witTitle:(NSString *)title {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:warning
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.userName) {
        [self.password becomeFirstResponder];
    }
    else if (theTextField == self.password){
        [self.password resignFirstResponder];
    }
    return YES;
}
@end
