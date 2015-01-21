//
//  ColorConvert.m
//  ColorBoard
//
//  Created by Su Xin on 15/1/21.
//  Copyright (c) 2015年 Su Xin. All rights reserved.
//

#import "ColorConvert.h"

#define CLIP_MIN			(0)
#define CLIP_MAX			(0xFF)

#define MAX_INT_VALUE		(255.0f)


@implementation ColorConvert

- (float) floatRVal
{
	return ((float)self.rval / MAX_INT_VALUE);
}

- (float) floatGVal
{
	return ((float)self.gval / MAX_INT_VALUE);
}

- (float) floatBVal
{
	return ((float)self.bval / MAX_INT_VALUE);
}

-(int) clipValue: (int)val;
{
	return (( val < CLIP_MIN ) ? CLIP_MIN : (( val > CLIP_MAX ) ? CLIP_MAX : val ));
}

/*
 *	R = ((Y<<8) + 359*(V-128) + 128) >> 8;
 *	G = ((Y<<8) - 88*(U-128) - 183*(V-128) + 128) >> 8;
 *	B = ((Y<<8) + 454*(U-128) + 128) >> 8;
 */
-(void) yuvToRGB
{
	int r, g, b;
	int y = [self yval];
	int u = [self uval];
	int v = [self vval];

	r = (( y << 8 ) + 359 * ( u - 128 ) + 128 ) >> 8;
	[self setRval: [self clipValue:r]];
	
	g = (( y << 8 ) -  88 * ( u - 128 ) - 183 * ( v - 128 ) + 128 ) >> 8;
	[self setGval: [self clipValue:g]];
	
	b = (( y << 8 ) + 454 * ( u - 128 ) + 128 ) >> 8;
	[self setBval: [self clipValue:b]];
}

/*
 *	Y = ( 77*R + 150*G + 29*B + 128) >> 8;
 *	U = ((-43*R - 85*G + 128*B + 128) >> 8) + 128;
 *	V = ((128*R - 107*G - 21*B + 128) >> 8) + 128;
 */
-(void) rgbToYUV
{
	int y, u, v;
	int r = [self rval];
	int g = [self gval];
	int b = [self bval];

	y = ( 77 * r + 150 * g + 29 * b + 128 ) >> 8;
	[self setYval: [self clipValue: y]];
	
	u = (( -43 * r - 85 * g + 128 * b + 128 ) >> 8 ) + 128;
	[self setUval: [self clipValue: u]];

	v = (( 128 * r - 107 * g - 21 * b + 128 ) >> 8 ) + 128;
	[self setVval: [self clipValue: v]];
}

@end
