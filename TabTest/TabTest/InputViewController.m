//
//  InputViewController.m
//  TabTest
//
//  Created by Seth Rutman on 10/26/14.
//  Copyright (c) 2014 Miracle Makers. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnName:(id)sender {
    _nameTest = [NSArray arrayWithObjects:_itemName.text, _itemExpires.text, _itemType.text, _itemNotes.text, nil];
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
