//
//  Gradient.m
//  coregraphics
//
//  Created by Mark Dumes on 3/18/14.
//  Copyright (c) 2014 CollegeBlink. All rights reserved.
//

#import "Gradient.h"

@implementation Gradient

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGFloat components [12] = {
        1.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0,0.0,1.0,0.0,1.0
    };
    
    CGFloat locations[3] = {0.0,0.2, 1.0};
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, (size_t)3);
    
    CGContextDrawLinearGradient(ctx, gradient, CGPointMake(320, 0), CGPointMake(0, 460), (CGGradientDrawingOptions)NULL);
    CGColorSpaceRelease(colorSpace);
    
}


@end
