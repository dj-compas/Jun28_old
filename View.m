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
		self.backgroundColor = [UIColor blackColor];
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
		[UIView animateWithDuration:.3
							  delay:0
							options:UIViewAnimationOptionCurveEaseOut
						 animations:^{
							 sprite.center = [[touches anyObject] locationInView:self];
						 }
						 completion:Nil];
	}
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (touches.count > 0)
	{
		NSLog(@"poop");
	}
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (touches.count > 0)
	{
		sprite.center = [[touches anyObject] locationInView:self];
	}
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
