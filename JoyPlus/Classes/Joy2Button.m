//
//  Joy2Button.m
//  JoyPlus
//
//  Created by Ciel Breiz on 5/2/14.
//  Copyright 2014 Ciel Breiz. All rights reserved.
//

#import "Joy2Button.h"

@implementation Joy2Button

+ (id)scene
{
    return [[self alloc] init];
}

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    
    //add Joystick
    SneakyJoystickSkinnedBase *leftJoy = [self createJoystick];
    leftJoy.position = ccp(64,64);
    leftJoystick = leftJoy.joystick;
    [self addChild:leftJoy];
    
    //add ButtonA
    SneakyButtonSkinnedBase *btnA = [self createButton];
    btnA.positionType = CCPositionTypeNormalized;
    btnA.position = ccp(0.9f,0.1f);
    buttonA = btnA.button;
    [self addChild:btnA];
    
    //add ButtonB
    SneakyButtonSkinnedBase *btnB = [self createButton];
    btnB.positionType = CCPositionTypeNormalized;
    btnB.position = ccp(0.6f,0.1f);
    buttonB = btnB.button;
    [self addChild:btnB];
    
    // done
    return self;
}

@end
