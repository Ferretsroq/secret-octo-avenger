//
//  InputViewController.h
//  TabTest
//
//  Created by Seth Rutman on 10/26/14.
//  Copyright (c) 2014 Miracle Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InventoryVIewController.h"

@interface InputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *itemName;
@property (weak, nonatomic) IBOutlet UITextField *itemExpires;
@property (weak, nonatomic) IBOutlet UITextField *itemType;
@property (weak, nonatomic) IBOutlet UITextField *itemNotes;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (weak, nonatomic) IBOutlet NSArray *nameTest;

@end
