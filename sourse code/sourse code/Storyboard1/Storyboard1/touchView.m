//
//  touchView.m
//  Storyboard1
//
//  Created by 黄 hshd1234 on 12-12-13.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "touchView.h"


@implementation touchView
@synthesize pointArr_1;
@synthesize pointArr_2;

@synthesize currentArr_1;
@synthesize currentArr_2;
- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor greenColor];
        
        pointArr_1 = [[NSMutableArray alloc] init];
        currentArr_1 = [[NSMutableArray alloc] init];
        
        pointArr_2 = [[NSMutableArray alloc] init];
        currentArr_2 = [[NSMutableArray alloc] init];
        
        self.multipleTouchEnabled = YES;
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 5.0f);
    CGContextSetMiterLimit(context, 0.5);
    //CGContextSetShadow(context, CGSizeMake(1, 5), 0.5);//设置阴影的
    //CGContextSetShadowWithColor(context, CGSizeMake(10, 10), 0, [UIColor redColor].CGColor);//设置双条线
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineCap( context , kCGLineCapRound ) ;
    //CGContextSet
    
    CGContextSetBlendMode(context, kCGBlendModeNormal);//kCGBlendModeNormal
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    for(NSMutableArray *cc in pointArr_1)
    {
        
        if([cc count] >0)
        {
            CGPoint  pp = CGPointFromString((NSString *)[cc objectAtIndex:0]);
            CGContextMoveToPoint(context, pp.x, pp.y);
            for (int i=0; i<[cc count]; i++) {
                CGPoint  ppp = CGPointFromString((NSString *)[cc objectAtIndex:i]);
                CGContextAddLineToPoint(context, ppp.x, ppp.y);
            }
        }
    }
    
    for(NSMutableArray *cc in pointArr_2)
    {
        
        if([cc count] >0)
        {
            CGPoint  pp = CGPointFromString((NSString *)[cc objectAtIndex:0]);
            CGContextMoveToPoint(context, pp.x, pp.y);
            for (int i=0; i<[cc count]; i++) {
                CGPoint  ppp = CGPointFromString((NSString *)[cc objectAtIndex:i]);
                CGContextAddLineToPoint(context, ppp.x, ppp.y);
            }
            
        }
    }
    
    CGContextStrokePath(context);
}





- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{   
    NSArray *allTouches = [touches allObjects];
    if([allTouches count] >=2)
    {
        CGPoint p1 = [[allTouches objectAtIndex:0] locationInView:self];
        CGPoint p2 = [[allTouches objectAtIndex:1] locationInView:self];
        if(fabs(p2.y - p1.y) > 200)
        {
            pointArr_1 = [[NSMutableArray alloc] init];
            [self setNeedsDisplay];
        }
    }
    else
    {
        UITouch *touch = [touches anyObject];
        CGPoint pp = [touch     locationInView:self];
        currentArr_1 = [[NSMutableArray alloc] init];
        [currentArr_1 addObject:NSStringFromCGPoint(pp)];
        [pointArr_1 addObject:currentArr_1];
        [self setNeedsDisplay];
        
        [delegate touchBegined:[NSString stringWithFormat:@"%f",pp.x]
                          andY:[NSString stringWithFormat:@"%f",pp.y]];
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSArray *allTouches = [touches allObjects];
    
    if([allTouches count] >=2)
    {
        CGPoint p1 = [[allTouches objectAtIndex:0] locationInView:self];
        CGPoint p2 = [[allTouches objectAtIndex:1] locationInView:self];
        if(fabs(p2.y - p1.y) > 200)
        {
            pointArr_1 = [[NSMutableArray alloc] init];
            [self setNeedsDisplay];
        }
    }
    
    else
    {
        
        UITouch *touch = [touches anyObject];
        CGPoint pp = [touch     locationInView:self];
        [currentArr_1 addObject:NSStringFromCGPoint(pp)];
        [self setNeedsDisplay];
        
        
        [delegate touchMoved:[NSString stringWithFormat:@"%f",pp.x]
                        andY:[NSString stringWithFormat:@"%f",pp.y]];
    }
}

-(void)serverTouchBegin:(NSString *)x andY:(NSString *)y{
    float px = [x floatValue];
    float py = [y floatValue];
    
    CGPoint pp = CGPointMake(px, py);
    
    currentArr_2 = [[NSMutableArray alloc] init];
    [currentArr_2 addObject:NSStringFromCGPoint(pp)];
    [pointArr_2 addObject:currentArr_2];
    [self setNeedsDisplay];
}
-(void)serverTouchMoved:(NSString *)x andY:(NSString *)y{
    
    float px = [x floatValue];
    float py = [y floatValue];
    
    CGPoint pp = CGPointMake(px, py);
    [currentArr_2 addObject:NSStringFromCGPoint(pp)];
    [self setNeedsDisplay];
}

@end
