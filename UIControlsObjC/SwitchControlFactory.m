//
//  SwitchControlFactory.m
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControlFactory.h"

@interface SwitchControlFactory : ControlFactory

@property BOOL switchFlipped;

@property (weak, nonatomic) IBOutlet UISwitch *switchControl;

@property (weak, nonatomic) IBOutlet UIButton *switchSaveButton;


@end

@protocol SwitchControlFactoryDelegate <NSObject>
@required
-(void)updateSwitchValue: (BOOL) isOn;
@end


@implementation SwitchControlFactory: ControlFactory
  
- (BOOL) switchValue;
- (SwitchControlFactoryDelegate*) delegate;
    
  
- (UIView *)build() {
    switchControl = [[UISwitch alloc] init];
    [switchControl addTarget(self, action: #selector(self.switchChanged(_:)), for: .[editingChanged)];
                             switchControl.isOn = self.switchValue;
                             return switchControl;
  }

@end
