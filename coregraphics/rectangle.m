//
//  rectangle.m
//  coregraphics
//
//  Created by Mark Dumes on 3/18/14.
//  Copyright (c) 2014 CollegeBlink. All rights reserved.
//

#import "rectangle.h"

@implementation rectangle

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
    //rectangle
    [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    CGContextMoveToPoint(ctx, 100.0, 100.0);
    CGContextAddLineToPoint(ctx, 200.0, 200.0);
    CGContextAddLineToPoint(ctx, 200.0, 300.0);
    CGContextAddLineToPoint(ctx, 100.0, 300.00);
    CGContextSetRGBFillColor(ctx, 255.0/255.0, 224.0/255.0, 63.0/255.0, 1.0);
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
    
    //ellipse
    CGContextBeginPath(ctx);
    CGContextAddArc(ctx, 100.0, 100.0, 100.0, M_PI/6, 11*M_PI/6, 0);
    CGContextStrokePath(ctx);
    
}


@end
