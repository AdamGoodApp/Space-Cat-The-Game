//
//  GamePlayScene.m
//  Space Cat
//
//  Created by Adam on 09/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "GamePlayScene.h"
#import "TitleScene.h"
#import "MachineNode.h"

@implementation GamePlayScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"background_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
        
        MachineNode *machine = [MachineNode machineAtPosition:CGPointMake(CGRectGetMidX(self.frame), 12)];
        [self addChild:machine];
    }
    
    return self;
}




@end
