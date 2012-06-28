//
//  Mega.m
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sprite.h"

@implementation Sprite

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor clearColor];
		sprite = [UIImage imageNamed:@"invader.png"];
		imageBounds = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
		
		x=0;
		y=0;
		
		// 
		//[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateSprite) userInfo:nil repeats:YES];
    }
    return self;
}

- (void) updateSprite
{
	x -= 20;
	NSLog(@"update sprite!!");
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	[sprite drawInRect:imageBounds];
	/*[UIView animateWithDuration:1
					 animations:^{
						 [sprite drawAtPoint:CGPointMake(x, y)];
						 x-=20;
					 }
					 completion:^(BOOL finished){
						 if (finished)
						 {
							 [sprite drawAtPoint:CGPointMake(x, y)];
						 }
					 }
	];*/
}


@end
