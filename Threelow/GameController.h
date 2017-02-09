//
//  LogicallyLinkedDiceOmG.h
//  Threelow
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic,strong) NSArray* diceArray;
@property (nonatomic,strong) NSMutableSet* heldDice;

-(void)holdDie:(NSString*) userChoice;
-(void)rollOnM;
-(int) score;
-(void)printAll;
-(void)resetDice;


@end
