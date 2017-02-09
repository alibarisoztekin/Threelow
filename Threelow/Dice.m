//
//  Dice.m
//  Threelow
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Dice.h"
#import "GameController.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void)randomizeDice{
    
    _currentValue = arc4random_uniform(6)+1;
}

-(void)printUnHoldDice{

        switch (self.currentValue) {
            case 1:
                NSLog(@"I ⚀");
                break;
            case 2:
                NSLog(@"II ⚁");
                break;
            case 3:
                NSLog(@"III ⚂");
                break;
            case 4:
                NSLog(@"IV ⚃");
                break;
            case 5:
                NSLog(@"V ⚄");
                break;
            case 6:
                NSLog(@"VI ⚅");
                break;
        }
    }
-(void)printHoldDice {
        switch (self.currentValue) {
            case 1:
                NSLog(@"[I ⚀]");
                break;
            case 2:
                NSLog(@"[II ⚁]");
                break;
            case 3:
                NSLog(@"[III ⚂]");
                break;
            case 4:
                NSLog(@"[IV ⚃]");
                break;
            case 5:
                NSLog(@"[V ⚄]");
                break;
            case 6:
                NSLog(@"[VI ⚅]");
                break;
        }
    }




@end
