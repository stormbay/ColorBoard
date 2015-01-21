//
//  ColorConvert.h
//  ColorBoard
//
//  Created by Su Xin on 15/1/21.
//  Copyright (c) 2015年 Su Xin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorConvert : NSObject

@property int rval;
@property int gval;
@property int bval;

@property int yval;
@property int uval;
@property int vval;

- (float) floatRVal;
- (float) floatGVal;
- (float) floatBVal;

-(int) clipValue: (int)val;

-(void) yuvToRGB;
-(void) rgbToYUV;

@end
