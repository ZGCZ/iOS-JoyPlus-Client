//
//  Joy2Button.h
//  JoyPlus
//
//  Created by Ciel Breiz on 5/2/14.
//  Copyright 2014 Ciel Breiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "ControlLayout.h"

@interface Joy2Button : ControlLayout {
    SneakyJoystick *leftJoystick;
	SneakyButton *buttonA;
    SneakyButton *buttonB;
}

+ (Joy2Button *)scene;
- (id)init;

@end