//
//  main.m
//  Threelow
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "UserInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController* gameController = [[GameController alloc] init];
        NSLog(@"Welcome to Threelow(Weirdest game NA)\n\n");
        while(YES)
        {
            NSLog(@"type roll, hold, unhold, reset or quit:");
            NSString* parsedInput =[UserInput getInput];
      
            if ([parsedInput isEqualToString:@"roll"]){
                [gameController rollOnM];
            }
            else if ([parsedInput isEqualToString:@"hold"]){
                NSLog(@"Enter the indexes of the dice you want to hold /n type with no spaces with indexes seperated by a comma (0-4)");
                NSString* userChoice = [UserInput getInput];
            
            [gameController holdDie:userChoice];
            }
            else if([parsedInput isEqualToString:@"unhold"]){
                NSLog(@"Enter the indexes of the dice you want to unhold /n type with no spaces with indexes seperated by a comma (0-4)");
                NSString* userChoice = [UserInput getInput];
                [gameController holdDie:userChoice];
            }
            else if ([parsedInput isEqualToString:@"reset"]){
                [gameController resetDice];
            }
            else if ([parsedInput isEqualToString:@"quit"])
                break;
            
         
        
                                   
        }
        
        
        
        
    }
    return 0;
}
