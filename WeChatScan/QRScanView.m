//
//  QRScanView.m
//  MShow
//
//  Created by it on 4/19/16.
//  Copyright © 2016 Allan.Chan. All rights reserved.
//

#import "QRScanView.h"

@interface QRScanView ()

@property (nonatomic, assign) CGRect scanRect;

@end

@implementation QRScanView

- (instancetype)initWithScanRect:(CGRect)rect {
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _scanRect = rect;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    [[[UIColor blackColor] colorWithAlphaComponent:0.5] setFill];
    
    CGMutablePathRef screenPath = CGPathCreateMutable();
    CGPathAddRect(screenPath, NULL, self.bounds);
    
    CGMutablePathRef scanPath = CGPathCreateMutable();
    CGPathAddRect(scanPath, NULL, self.scanRect);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddPath(path, NULL, screenPath);
    CGPathAddPath(path, NULL, scanPath);
    
    CGContextAddPath(ctx, path);
    CGContextDrawPath(ctx, kCGPathEOFill);
    
    CGPathRelease(screenPath);
    CGPathRelease(scanPath);
    CGPathRelease(path);
    
    [self addCornerLineWithContext:ctx rect:_scanRect];
   
}

- (void)addCornerLineWithContext:(CGContextRef)ctx rect:(CGRect)rect{
    
    //画四个边角
    CGContextSetLineWidth(ctx, 2);
    CGContextSetRGBStrokeColor(ctx, 255.0/255.0, 255.0/255.0, 255.0/255.0, 1);//绿色
    
    //左上角
    CGPoint poinsTopLeftA[] = {
        CGPointMake(rect.origin.x+0.7, rect.origin.y),
        CGPointMake(rect.origin.x+0.7 , rect.origin.y + 15)
    };
    CGPoint poinsTopLeftB[] = {
        CGPointMake(rect.origin.x, rect.origin.y +0.7),
        CGPointMake(rect.origin.x + 15, rect.origin.y+0.7)
    };
    [self addLine:poinsTopLeftA pointB:poinsTopLeftB ctx:ctx];
    
    //左下角
    CGPoint poinsBottomLeftA[] = {
        CGPointMake(rect.origin.x+ 0.7, rect.origin.y + rect.size.height - 15),
        CGPointMake(rect.origin.x +0.7,rect.origin.y + rect.size.height)
    };
    CGPoint poinsBottomLeftB[] = {
        CGPointMake(rect.origin.x , rect.origin.y + rect.size.height - 0.7),
        CGPointMake(rect.origin.x+0.7 +15, rect.origin.y + rect.size.height - 0.7)
    };
    [self addLine:poinsBottomLeftA pointB:poinsBottomLeftB ctx:ctx];
    
    //右上角
    CGPoint poinsTopRightA[] = {
        CGPointMake(rect.origin.x+ rect.size.width - 15, rect.origin.y+0.7),
        CGPointMake(rect.origin.x + rect.size.width,rect.origin.y +0.7 )
    };
    CGPoint poinsTopRightB[] = {
        CGPointMake(rect.origin.x+ rect.size.width-0.7, rect.origin.y),
        CGPointMake(rect.origin.x + rect.size.width-0.7,rect.origin.y + 15 +0.7 )
    };
    [self addLine:poinsTopRightA pointB:poinsTopRightB ctx:ctx];
    
    //右下角
    CGPoint poinsBottomRightA[] = {
        CGPointMake(rect.origin.x+ rect.size.width -0.7 , rect.origin.y+rect.size.height+ -15),
        CGPointMake(rect.origin.x-0.7 + rect.size.width,rect.origin.y +rect.size.height )
    };
    CGPoint poinsBottomRightB[] = {
        CGPointMake(rect.origin.x+ rect.size.width - 15 , rect.origin.y + rect.size.height-0.7),
        CGPointMake(rect.origin.x + rect.size.width,rect.origin.y + rect.size.height - 0.7 )
    };
    [self addLine:poinsBottomRightA pointB:poinsBottomRightB ctx:ctx];
    
    CGContextStrokePath(ctx);
}


- (void)addLine:(CGPoint[])pointA pointB:(CGPoint[])pointB ctx:(CGContextRef)ctx {
    CGContextAddLines(ctx, pointA, 2);
    CGContextAddLines(ctx, pointB, 2);
}

@end
