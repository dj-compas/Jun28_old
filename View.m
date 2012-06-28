//
//  View.m
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "Sprite.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		//self.backgroundColor = [UIColor blackColor];
        
        // add space image
        space = [UIImage imageNamed:@"space.jpg"];
        
		CGRect b = self.bounds;
		CGFloat w = b.size.width;
		CGFloat h = b.size.height;
		CGRect spriteFrame = CGRectMake(w/2-100/2, h/2-80/2, 100, 80);
		
		// init sprite
		sprite = [[Sprite alloc] initWithFrame:spriteFrame];
		
		[self addSubview:sprite];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (touches.count > 0)
	{
		// save current point of sprite as old point
        oldPoint = sprite.center;
        
        // get new touch point
        newPoint = [[touches anyObject] locationInView:self];
        
        NSLog(@"%f, %f", newPoint.x, newPoint.y);
        
        [UIView animateWithDuration:.3
							  delay:0
							options:UIViewAnimationOptionCurveEaseOut
						 animations:^{
							 sprite.center = [[touches anyObject] locationInView:self];
						 }
						 completion:^(BOOL finished){
                             if(finished)
                             {
                                 
                             }
                         }
         ];
	}
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (touches.count > 0)
	{
		// if a tap occured w/o changing the sprite's position, do the following
        if(oldPoint.x == newPoint.x && oldPoint.y == newPoint.y)
        {
            NSLog(@"poop");
        }
	}
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (touches.count > 0)
	{
		sprite.center = [[touches anyObject] locationInView:self];
	}
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect f = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    [space drawInRect:f];
}


@end
