//
//  View.h
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Sprite;

@interface View : UIView
{
	UIImage *space;
    UIView *sprite;
    CGPoint oldPoint;
    CGPoint newPoint;
}

@end
