#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        
        BOOL gameOn = YES;
        
        while (gameOn == 1) {
            
            AdditionQuestion *questionObj = [[AdditionQuestion alloc]init];
            [questionManager.questions addObject:questionObj];
            NSLog(@"%@", [questionObj question]);
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler getUsersAnswer];
            
            
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else {
            
             NSInteger usersAnswer = [userInp integerValue];
            
            if (usersAnswer == [questionObj answer]) {
                [scoreKeeper countOfRight];
                NSLog(@"Right!");
//                NSLog(@"Time Difference: %f", [questionObj answerTime]);
            } else {
                [scoreKeeper countOfWrong];
                NSLog(@"Wrong!");
            }
            
        }
            
            [scoreKeeper outputScore];
//          Remove me: prints count of questionObj in the array
//          NSLog(@"%lu", (unsigned long)[questionManager.questions count]);
            NSLog(@"%@", [questionManager timeOutput]);
      
        }
    return 0;
    }
}
