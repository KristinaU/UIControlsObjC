//
//  ViewController.h
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwitchViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property (strong, nonatomic) NSMutableArray *controls;

//@property (weak, nonatomic) UIViewController * controlViewController;

@property (weak, nonatomic) SwitchViewController *switchViewController;

////@property SliderViewController *sliderViewController;
////@property StepperViewController *stepperViewController;
////@property TextViewController *textViewController;
////@property SegmentedViewController *switchViewController;







@end

