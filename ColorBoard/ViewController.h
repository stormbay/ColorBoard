//
//  ViewController.h
//  ColorBoard
//
//  Created by Su Xin on 15/1/21.
//  Copyright (c) 2015年 Su Xin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "ColorView.h"

@class ColorConvert;

@interface ViewController : NSViewController

@property (strong) ColorConvert *colorConvert;

@property (weak) IBOutlet ColorView *colorView;

@property (weak) IBOutlet NSTextField *rval;
@property (weak) IBOutlet NSSlider *rSlider;
- (IBAction)takeIntegerRVal:(id)sender;

@property (weak) IBOutlet NSTextField *gval;
@property (weak) IBOutlet NSSlider *gSlider;
- (IBAction)takeIntegerGVal:(id)sender;

@property (weak) IBOutlet NSTextField *bval;
@property (weak) IBOutlet NSSlider *bSlider;
- (IBAction)takeIntegerBVal:(id)sender;

@property (weak) IBOutlet NSTextField *yval;
@property (weak) IBOutlet NSSlider *ySlider;
- (IBAction)takeIntegerYVal:(id)sender;

@property (weak) IBOutlet NSTextField *uval;
@property (weak) IBOutlet NSSlider *uSlider;
- (IBAction)takeIntegerUVal:(id)sender;

@property (weak) IBOutlet NSTextField *vval;
@property (weak) IBOutlet NSSlider *vSlider;
- (IBAction)takeIntegerVVal:(id)sender;

- (void) updateUserInterface;

@end

