//
//  ControlLayout.m
//  JoyPlus
//
//  Created by Ciel Breiz on 5/2/14.
//  Copyright 2014 Ciel Breiz. All rights reserved.
//

#import "ControlLayout.h"
#import "IntroScene.h"


@implementation ControlLayout

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    
    // Disable touch handling on scene node
    self.userInteractionEnabled = NO;
    
    // Create a colored background (Dark Grey)
    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f]];
    [self addChild:background];
    
    // Create a back button
    CCButton *backButton = [CCButton buttonWithTitle:@"[ Back ]" fontName:@"Verdana-Bold" fontSize:18.0f];
    backButton.positionType = CCPositionTypeNormalized;
    backButton.position = ccp(0.85f, 0.95f); // Top Right of screen
    [backButton setTarget:self selector:@selector(onBackClicked:)];
    [self addChild:backButton];
    
    // done
    return self;
}

- (void)onBackClicked:(id)sender
{
    // back to intro scene with transition
    [[CCDirector sharedDirector] replaceScene:[IntroScene scene]
                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionRight duration:1.0f]];
}

// ----------------------------------------------------------

- (SneakyButtonSkinnedBase*)createButton;
{
    SneakyButtonSkinnedBase *btn = [[SneakyButtonSkinnedBase alloc] init];
    btn.defaultSprite = [ColoredCircleSprite circleWithColor:[CCColor colorWithRed:0.5 green:1 blue:0.5 alpha:0.5f] radius:32];
    btn.activatedSprite = [ColoredCircleSprite circleWithColor:[CCColor colorWithRed:1 green:1 blue:1 alpha:1] radius:32];
    btn.pressSprite = [ColoredCircleSprite circleWithColor:[CCColor colorWithRed:1 green:0 blue:0 alpha:1] radius:32];
    btn.button = [[SneakyButton alloc] initWithRect:CGRectMake(0, 0, 64, 64)];
    
    return btn;
}

- (SneakyJoystickSkinnedBase*)createJoystick
{
    SneakyJoystickSkinnedBase *leftJoy = [[SneakyJoystickSkinnedBase alloc] init];
    leftJoy.backgroundSprite = [ColoredCircleSprite circleWithColor:[CCColor colorWithRed:1 green:0 blue:0 alpha:0.5] radius:64];
    leftJoy.thumbSprite = [ColoredCircleSprite circleWithColor:[CCColor colorWithRed:0 green:0 blue:1 alpha:0.8f] radius:32];
    leftJoy.joystick = [[SneakyJoystick alloc] initWithRect:CGRectMake(0,0,128,128)];
    return leftJoy;
}

@end