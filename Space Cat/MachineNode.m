//
//  MachineNode.m
//  Space Cat
//
//  Created by Adam on 10/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "MachineNode.h"

@implementation MachineNode

+(instancetype)machineAtPosition:(CGPoint)position {
    
    MachineNode *machine = [self spriteNodeWithImageNamed:@"machine_1"];
    machine.position = position;
    machine.anchorPoint = CGPointMake(0.5, 0);
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"machine_1"], [SKTexture textureWithImageNamed:@"machine_2"]];
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    SKAction *machineRepeat = [SKAction repeatActionForever:machineAnimation];
    [machine runAction:machineRepeat];
    
    return machine;
}

@end
