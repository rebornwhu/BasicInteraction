//
//  ViewController.m
//  BasicInteraction
//
//  Created by Xiao Lu on 4/18/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;
@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;

@end

@implementation ViewController

- (IBAction)changeLabel:(id)sender {
    NSString *contents = self.simpleTextField.text;
    
    NSString *message = [NSString stringWithFormat:@"Hello, %@", contents];
    [self.simpleLabel setText:message];
    
    [self.simpleTextField resignFirstResponder];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
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
