//
//  ViewController.m
//  Arawnd
//
//  Created by Sikander Zeb on 3/17/16.
//  Copyright © 2016 Boopin. All rights reserved.
//

#import "Register.h"

@interface Register () <UITextFieldDelegate>

@end

@implementation Register

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
