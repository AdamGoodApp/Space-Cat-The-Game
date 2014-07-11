//
//  SpaceCatNode.h
//  Space Cat
//
//  Created by Adam on 11/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SpaceCatNode : SKSpriteNode

+(instancetype)spaceCatPosition:(CGPoint)position;
-(void)performTap;

@end
