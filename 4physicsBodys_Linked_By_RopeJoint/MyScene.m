//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
@property SKSpriteNode* mySquare10;
@property SKSpriteNode* mySquare11;
@property SKSpriteNode* mySquare12;
@property SKSpriteNode* mySquare13;
@property SKSpriteNode* mySquare14;
@property SKSpriteNode* mySquare15;
@property SKSpriteNode* mySquare16;
@property SKSpriteNode* myShelf;
@property SKPhysicsJoint* myJoint1;
@property SKPhysicsJoint* myJoint2;
@property SKPhysicsJoint* myJoint3;
@property SKPhysicsJoint* myJoint4;
@property SKPhysicsJoint* myJoint5;
@property SKPhysicsJoint* myJoint6;
@property SKPhysicsJoint* myJoint7;
@property SKPhysicsJoint* myJoint8;
@property SKPhysicsJoint* myJoint9;
@property SKPhysicsJoint* myJoint10;
@property SKPhysicsJoint* myJoint11;
@property SKPhysicsJoint* myJoint12;
@property SKPhysicsJoint* myJoint13;
@property SKPhysicsJoint* myJoint14;
@property SKPhysicsJoint* myJoint15;
@property SKPhysicsJoint* myJoint16;
@property SKPhysicsJoint* myJoint17;
@property SKPhysicsJoint* myJoint18;

@property SKNode* heldNode;

@end

@implementation MyScene

-(void) activateJointRope{
    
    //Left Leg
    _myJoint1 = [SKPhysicsJointFixed jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare3.physicsBody anchor:CGPointMake(_mySquare1.position.x+10,_mySquare1.position.y+10)];
    [self.physicsWorld addJoint:_myJoint1];
    _myJoint3 = [SKPhysicsJointFixed jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare5.physicsBody anchor:CGPointMake(_mySquare3.position.x+10,_mySquare3.position.y+10)];
    [self.physicsWorld addJoint:_myJoint3];
    //Right Leg
    _myJoint2 = [SKPhysicsJointFixed jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare4.physicsBody anchor:CGPointMake(_mySquare2.position.x-10,_mySquare2.position.y+10)];
    [self.physicsWorld addJoint:_myJoint2];
    _myJoint4 = [SKPhysicsJointFixed jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare6.physicsBody anchor:CGPointMake(_mySquare4.position.x-10,_mySquare4.position.y+10)];
    [self.physicsWorld addJoint:_myJoint4];
    
    //Waist
    _myJoint5 = [SKPhysicsJointFixed jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchor:CGPointMake(_mySquare5.position.x+10,_mySquare5.position.y)];
    [self.physicsWorld addJoint:_myJoint5];
    
    //Torso
    _myJoint7 = [SKPhysicsJointFixed jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchor:CGPointMake(_mySquare7.position.x, _mySquare7.position.y+10)];
    [self.physicsWorld addJoint:_myJoint7];
    
    //Shoulders
    _myJoint11 = [SKPhysicsJointFixed jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare9.physicsBody anchor:CGPointMake(_mySquare10.position.x-10,_mySquare10.position.y)];
    [self.physicsWorld addJoint:_myJoint11];
    _myJoint12 = [SKPhysicsJointFixed jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare11.physicsBody anchor:CGPointMake(_mySquare10.position.x+10,_mySquare10.position.y)];
    [self.physicsWorld addJoint:_myJoint12];
    
    //Shoulders to Torso
    _myJoint13 = [SKPhysicsJointFixed jointWithBodyA:_mySquare8.physicsBody bodyB:_mySquare10.physicsBody anchor:CGPointMake(_mySquare8.position.x,_mySquare8.position.y+10)];
    [self.physicsWorld addJoint:_myJoint13];
    
    //Shoulders to Head
    _myJoint14 = [SKPhysicsJointFixed jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare12.physicsBody anchor:CGPointMake(_mySquare10.position.x,_mySquare10.position.y+10)];
    [self.physicsWorld addJoint:_myJoint14];
    
    //Torso to waist
    _myJoint8 = [SKPhysicsJointFixed jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare7.physicsBody anchor:CGPointMake(_mySquare5.position.x,_mySquare5.position.y+10)];
    [self.physicsWorld addJoint:_myJoint8];
    _myJoint9 = [SKPhysicsJointFixed jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchor:CGPointMake(_mySquare6.position.x, _mySquare6.position.y+10)];
    [self.physicsWorld addJoint:_myJoint9];
    
    //Left Arm
    _myJoint15 = [SKPhysicsJointLimit jointWithBodyA:_mySquare13.physicsBody bodyB:_mySquare15.physicsBody anchorA:CGPointMake(_mySquare13.position.x,_mySquare13.position.y) anchorB:CGPointMake(_mySquare15.position.x,_mySquare15.position.y)];
    [self.physicsWorld addJoint:_myJoint15];
    
    //Right Arm
    _myJoint16 = [SKPhysicsJointSpring jointWithBodyA:_mySquare14.physicsBody bodyB:_mySquare16.physicsBody anchorA:CGPointMake(_mySquare14.position.x,_mySquare14.position.y) anchorB:CGPointMake(_mySquare16.position.x,_mySquare16.position.y)];
    [self.physicsWorld addJoint:_myJoint16];
    
    //Left Arm to Shoulder
    _myJoint17 = [SKPhysicsJointPin jointWithBodyA:_mySquare9.physicsBody bodyB:_mySquare13.physicsBody anchor:CGPointMake(_mySquare9.position.x-10,_mySquare9.position.y-10)];
    [self.physicsWorld addJoint:_myJoint17];
    
    //Right Arm to Shoulder
    _myJoint18 = [SKPhysicsJointPin jointWithBodyA:_mySquare11.physicsBody bodyB:_mySquare14.physicsBody anchor:CGPointMake(_mySquare11.position.x+10,_mySquare11.position.y-10)];
    [self.physicsWorld addJoint:_myJoint18];
    
}

-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(20, 20)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(20, 20)];
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(20, 20)];
    
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(20, 20)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(20, 20)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(20, 20)];
    
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(20, 20)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(20, 20)];
    
    _mySquare9 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 20)];
    _mySquare10 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 20)];
    _mySquare11 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 20)];
    
    _mySquare12 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(20, 20)];
    
    
    _mySquare13 =[[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(20, 20)];
    _mySquare15 =[[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(20, 20)];
    _mySquare14 = [[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(20, 20)];
    _mySquare16 =[[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(20, 20)];
    
    
    CGFloat midX = self.size.width/2;
    [_mySquare1 setPosition:CGPointMake(midX-30, 20)];
    [_mySquare2 setPosition:CGPointMake(midX+30, 20)];
    [_mySquare3 setPosition:CGPointMake(midX-20, 40)];
    [_mySquare4 setPosition:CGPointMake(midX+20, 40)];
    [_mySquare5 setPosition:CGPointMake(midX-10, 60)];
    [_mySquare6 setPosition:CGPointMake(midX+10, 60)];
    [_mySquare7 setPosition:CGPointMake(midX, 80)];
    [_mySquare8 setPosition:CGPointMake(midX, 100)];
    [_mySquare9 setPosition:CGPointMake(midX-20, 120)];
    [_mySquare10 setPosition:CGPointMake(midX, 120)];
    [_mySquare11 setPosition:CGPointMake(midX+20, 120)];
    [_mySquare12 setPosition:CGPointMake(midX, 140)];
    [_mySquare13 setPosition:CGPointMake(midX-30,100)];
    [_mySquare15 setPosition:CGPointMake(midX-50,80)];
    [_mySquare14 setPosition:CGPointMake(midX+30,100)];
    [_mySquare16 setPosition:CGPointMake(midX+50,80)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare10.size];
    _mySquare11.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare11.size];
    _mySquare12.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare12.size];
    _mySquare13.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare13.size];
    _mySquare14.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare14.size];
    _mySquare15.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare15.size];
    _mySquare16.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare16.size];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    [self addChild:_mySquare11];
    [self addChild:_mySquare12];
    [self addChild:_mySquare13];
    [self addChild:_mySquare14];
    [self addChild:_mySquare15];
    [self addChild:_mySquare16];
    
    
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 40)];
    _myShelf.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    [self addChild:_myShelf];
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:0.0];
        
        [self spawnSquares];
        [self activateJointRope];
        [self makeShelf];
        
    }
    return self;
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        _heldNode = [self nodeAtPoint:location];
    }
    
    if (_heldNode.physicsBody.dynamic) {
        [_heldNode.physicsBody setDynamic:NO];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_heldNode setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    if (!_heldNode.physicsBody.dynamic) {
        [_heldNode.physicsBody setDynamic:YES];
    }
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    if (!_heldNode.physicsBody.dynamic) {
        [_heldNode.physicsBody setDynamic:YES];
    }
}


-(void)update:(CFTimeInterval)currentTime {
    
}

@end
