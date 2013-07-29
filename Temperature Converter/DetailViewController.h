//
//  DetailViewController.h
//  Temperature Converter
//
//  Created by Y.CORP.YAHOO.COM\jmedrano on 7/28/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\jmedrano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
