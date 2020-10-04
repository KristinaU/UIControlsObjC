//
//  SwitchViewController.h
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#ifndef SwitchViewController_h
#define SwitchViewController_h
#import <UIKit/UIKit.h>

@protocol SwitchViewControllerDelegate <NSObject>

@required

-(void)updateSwitch: (BOOL) isOn;

@end

@interface SwitchViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *switchControl;

@property (weak, nonatomic) IBOutlet UIButton *switchSaveButton;

@property (weak, nonatomic) id<SwitchViewControllerDelegate> delegate;

@property BOOL isOn;

//- (void) setIsOn:(BOOL)isOn;

@end

#endif /* SwitchViewController_h */
