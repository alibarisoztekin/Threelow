//
//  LogicallyLinkedDiceOmG.m
//  Threelow
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "GameController.h"


@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _heldDice = [NSMutableSet new];
        Dice* d0=[[Dice alloc] init];
        Dice* d1=[[Dice alloc] init];
        Dice* d2=[[Dice alloc] init];
        Dice* d3=[[Dice alloc] init];
        Dice* d4=[[Dice alloc] init];
        _diceArray = @[d0,d1,d2,d3,d4];
        

    }
    return self;
}

-(void)rollOnM{
    for (Dice* d in _diceArray) {
        [d randomizeDice];
    }
    [self printAll];
}

-(void)holdDie:(NSString*) userChoice{
    
    NSArray* inputArray = [userChoice componentsSeparatedByString:@","];
    
    for (NSString* inputIndex in inputArray) {
        if ([_heldDice containsObject:[_diceArray objectAtIndex:[inputIndex integerValue]]]){
        [_heldDice removeObject:[_diceArray objectAtIndex:[inputIndex integerValue]]];
        }
        else{
        [_heldDice addObject:[_diceArray objectAtIndex:[inputIndex integerValue]]];
        }
    }
    [self printAll];
}

-(int) score{
        int score = 0;
        for (Dice* d in _heldDice) {
                if (d.currentValue != 3) {
                    score += d.currentValue;
                }
        }
        return score;
}

- (void)resetDice {
   
    [_heldDice removeAllObjects];
    [self printAll];
}

- (void)printAll {
    for (Dice *d in _diceArray) {
        if([_heldDice containsObject:d])
            [d printHoldDice];
        else
            [d printUnHoldDice];
            
            NSLog(@"Current score:%i", [self score]);
    
}
}

@end
