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
#import "SpaceCatNode.h"

@implementation GamePlayScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"background_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
        
        MachineNode *machine = [MachineNode machineAtPosition:CGPointMake(CGRectGetMidX(self.frame), 12)];
        [self addChild:machine];
        
        SpaceCatNode *spaceCat = [SpaceCatNode spaceCatPosition:CGPointMake(machine.position.x, machine.position.y-2)];
        [self addChild:spaceCat];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    SpaceCatNode *spaceCat = (SpaceCatNode *)[self childNodeWithName:@"SpaceCat"];
    spaceCat.performTap;
}


@end
