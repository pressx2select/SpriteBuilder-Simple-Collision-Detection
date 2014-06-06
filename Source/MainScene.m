#import "MainScene.h"

@implementation MainScene {
    CCSprite *_hero;
    CCPhysicsNode *_physicsNode;
    CCNode *_ground;
}
- (void)didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
    _ground.physicsBody.collisionType = @"floor";
    _physicsNode.collisionDelegate = self;
    _hero.physicsBody.collisionType = @"hero";
}


#pragma mark - CCPhysicsCollisionDelegate

-(BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair hero:(CCNode *)hero floor:(CCNode *)floor {
    CCLOG(@"Something FINALLY collided!");
    [_ground removeFromParent];
    return TRUE;
}

@end
