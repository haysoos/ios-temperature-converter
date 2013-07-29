//
//  TemperatureViewController.m
//  Temperature Converter
//
//  Created by Y.CORP.YAHOO.COM\jmedrano on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jmedrano. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField delegate
-(BOOL)textFieldShouldBeginEditing:(UITextField *) textField {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(onDoneButton)];
    
    return YES;
}

- (void) onDoneButton {
    [self.view endEditing:YES];
    [self updateValues];
}

-(void)updateValues {
    
    float fahrenheit = [self.fahrenheitTextField.text floatValue];
    float celsius = [self.celciusTextField.text floatValue];
    
    if(fahrenheit){
        celsius = (fahrenheit - 32) * 5 / 9;
        self.celciusTextField.text = [NSString stringWithFormat:@"%.2f", celsius];
    } else if(celsius){
        fahrenheit = (celsius * 5 / 9) + 32;
        self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.2f", fahrenheit];
    }
    
    
}

@end
