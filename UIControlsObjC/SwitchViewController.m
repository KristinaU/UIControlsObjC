//
//  SwitchController.m
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import "SwitchViewController.h"

@implementation SwitchViewController

@synthesize switchControl, delegate, isOn;

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setIsOn:isOn];
//    [self.switchControl setOn:isOn];
    
    [switchControl addTarget:self action:@selector(isOn:) forControlEvents:UIControlEventValueChanged];
}

- (IBAction)save:(UIButton *)switchSaveButton {
    self.isOn = self.switchControl.isOn;
    [self.delegate updateSwitch:isOn];
    [self.navigationController popViewControllerAnimated:true];
}
@end

