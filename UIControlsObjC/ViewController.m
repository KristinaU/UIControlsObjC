//
//  ViewController.m
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>


@end

@implementation ViewController

- (void)initControls {
    
    self.controls = [[NSMutableArray alloc] init];
    [self.controls addObject: [NSMutableArray arrayWithObjects:@"Switch", @"false", nil]];
    [self.controls addObject: [NSMutableArray arrayWithObjects:@"Slider", @"0", nil]];
    [self.controls addObject: [NSMutableArray arrayWithObjects:@"Stepper", @"0", nil]];
    [self.controls addObject: [NSMutableArray arrayWithObjects:@"Text Field", @"Some text", nil]];
    [self.controls addObject: [NSMutableArray arrayWithObjects:@"Segmented Control", @"0", nil]];
    
    NSLog(@"%@", self.controls[0]);
    NSLog(@"%@", self.controls[1]);
    NSLog(@"%@", self.controls[2]);
    NSLog(@"%@", self.controls[3]);
    NSLog(@"%@", self.controls[4]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initControls];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.controls count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"CellID" forIndexPath: indexPath];
    
    NSString*nameOfTheControl = [[self.controls objectAtIndex:indexPath.row]objectAtIndex:0];
    NSString*valueOfTheControl = (NSString *)[[self.controls objectAtIndex:indexPath.row]objectAtIndex:1];
    
    cell.textLabel.text = (nameOfTheControl);
    cell.detailTextLabel.text = (valueOfTheControl);
    
    return cell;
}


- (void)updateSwitch: (BOOL) isOn {
    
NSString*switchValueString = (@"%@", isOn ? @"YES" : @"NO");

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * controlViewController;
    switch (indexPath.row) {
            
        case 0:
            
            self.switchViewController = [storyboard instantiateViewControllerWithIdentifier:@"SwitchViewController"];
            self.switchViewController.delegate = self;
            self.switchViewController.isOn = NO;
            controlViewController = self.switchViewController;

            break;
            
//        case 1:
//            SliderViewController *sliderViewController = [storyboard instantiateViewControllerWithIdentifier:@"SliderViewController"];
//            sliderViewController.delegate = self;
//            sliderViewController.value = 0;
//            controlViewController = sliderViewController;
//            break;
//
//        case 2:
//        StepperViewController *stepperViewController = [storyboard instantiateViewControllerWithIdentifier:@"StepperViewController"];
//        stepperViewController.delegate = self;
//        stepperViewController.value = 0;
//        controlViewController = stepperViewController;
//        break;
//
        case 3:
        TextViewController *textViewController = [storyboard instantiateViewControllerWithIdentifier:@"TextViewController"];
        textViewController.delegate = self;
        textViewController.value = @"Some text";
        controlViewController = textViewController;
        break;
//
//
//        case 4:
//        SegmentedViewController *segmentedViewController = [storyboard instantiateViewControllerWithIdentifier:@"SegmentedViewController"];
//        segmentedViewController.delegate = self;
//        segmentedViewController.value = 0;
//        controlViewController = segmentedViewController;
//        break;
//
        default:
            return;
        
    }
    
    [self.navigationController pushViewController: controlViewController animated:YES];

}
@end
