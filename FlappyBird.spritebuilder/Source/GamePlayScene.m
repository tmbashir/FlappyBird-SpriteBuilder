#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    // hceck to see if 2 second have passed
    if (timeSinceObstacle > 2.0f) {
        //add a new obstacle
        [self addObstacle];
        
        // Then reset the timer
        timeSinceObstacle = 0.0f;
        
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [character flap];
    
}

@end
