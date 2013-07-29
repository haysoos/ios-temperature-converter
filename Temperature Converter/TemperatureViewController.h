//
//  TemperatureViewController.h
//  Temperature Converter
//
//  Created by Y.CORP.YAHOO.COM\jmedrano on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jmedrano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, weak) IBOutlet UITextField *celciusTextField;

-(IBAction)onDoneButton;

@end
