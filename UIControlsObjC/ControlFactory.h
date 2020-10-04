//
//  ControlFactory.h
//  UIControlsObjC
//
//  Created by The App Experts on 01/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ControlFactory

@property BOOL needsWidth;

@end

@protocol ControlFactory <NSObject>

- (UIView)build;

@end

NS_ASSUME_NONNULL_END
