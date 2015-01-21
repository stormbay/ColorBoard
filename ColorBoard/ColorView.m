//
//  ColorView.m
//  ColorBoard
//
//  Created by Su Xin on 15/1/21.
//  Copyright (c) 2015年 Su Xin. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
	NSRect updateRect = [self bounds];
	NSColor *updateColor = [NSColor colorWithCalibratedRed:[self red] green:[self green] blue:[self blue] alpha:1.0];

	[updateColor set];
	[NSBezierPath fillRect: updateRect];
}

@end
