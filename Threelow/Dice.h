//
//  Dice.h
//  Threelow
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject


@property (nonatomic) NSInteger currentValue;

-(void)randomizeDice;
-(void)printHoldDice;
-(void)printUnHoldDice;
@end
