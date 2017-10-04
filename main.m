#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  //     int right = 0;
  //      int wrong = 0;
        
        BOOL gameOn = YES;
        
        while (gameOn == 1) {
            
            AdditionQuestion *questionObj = [[AdditionQuestion alloc]init];
            NSLog(@"%@", [questionObj question]);
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler getUsersAnswer];
            
           ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else {
            
             NSInteger usersAnswer = [userInp integerValue];
            
            if (usersAnswer == [questionObj answer]) {
             //  right ++;
              [scoreKeeper countOfRight];
                NSLog(@"Right!");
            } else {
            //    wrong ++;
                [scoreKeeper countOfWrong];
                NSLog(@"Wrong!");
            }
            
        }
            
            [scoreKeeper outputScore];
         //   NSLog(@"Your score is: %i rights and %i wrongs", right, wrong);
        }
    return 0;
    }
}
