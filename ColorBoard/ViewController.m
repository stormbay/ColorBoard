//
//  ViewController.m
//  ColorBoard
//
//  Created by Su Xin on 15/1/21.
//  Copyright (c) 2015年 Su Xin. All rights reserved.
//

#import "ViewController.h"
#import "ColorConvert.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
	ColorConvert *aColor = [[ColorConvert alloc] init];
	[self setColorConvert: aColor];

	[self.colorConvert setUval: 0x80];
	[self.colorConvert setVval: 0x80];

	[self updateUserInterface];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void) updateUserInterface
{
	[self.rval setIntegerValue: [self.colorConvert rval]];
	[self.rSlider setIntegerValue: [self.colorConvert rval]];

	[self.gval setIntegerValue: [self.colorConvert gval]];
	[self.gSlider setIntegerValue: [self.colorConvert gval]];

	[self.bval setIntegerValue: [self.colorConvert bval]];
	[self.bSlider setIntegerValue: [self.colorConvert bval]];

	[self.yval setIntegerValue: [self.colorConvert yval]];
	[self.ySlider setIntegerValue: [self.colorConvert yval]];

	[self.uval setIntegerValue: [self.colorConvert uval]];
	[self.uSlider setIntegerValue: [self.colorConvert uval]];

	[self.vval setIntegerValue: [self.colorConvert vval]];
	[self.vSlider setIntegerValue: [self.colorConvert vval]];

	[self.colorView setRed: [self.colorConvert floatRVal]];
	[self.colorView setGreen: [self.colorConvert floatGVal]];
	[self.colorView setBlue: [self.colorConvert floatBVal]];
	[self.colorView setNeedsDisplay: YES];
}

- (IBAction)takeIntegerRVal:(id)sender {
	int red = [sender floatValue];
	[self.colorConvert setRval: red];
	[self.colorConvert rgbToYUV];

	[self updateUserInterface];
}

- (IBAction)takeIntegerGVal:(id)sender {
	int green = [sender floatValue];
	[self.colorConvert setGval: green];
	[self.colorConvert rgbToYUV];

	[self updateUserInterface];
}

- (IBAction)takeIntegerBVal:(id)sender {
	int blue = [sender floatValue];
	[self.colorConvert setBval: blue];
	[self.colorConvert rgbToYUV];

	[self updateUserInterface];
}

- (IBAction)takeIntegerYVal:(id)sender {
	int yval = [sender floatValue];
	[self.colorConvert setYval: yval];
	[self.colorConvert yuvToRGB];

	[self updateUserInterface];
}

- (IBAction)takeIntegerUVal:(id)sender {
	int uval = [sender floatValue];
	[self.colorConvert setUval: uval];
	[self.colorConvert yuvToRGB];

	[self updateUserInterface];
}

- (IBAction)takeIntegerVVal:(id)sender {
	int vval = [sender floatValue];
	[self.colorConvert setVval: vval];
	[self.colorConvert yuvToRGB];

	[self updateUserInterface];
}

@end
