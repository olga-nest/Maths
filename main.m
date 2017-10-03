#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        while (gameOn == 1) {
            
            AdditionQuestion *questionObj = [[AdditionQuestion alloc]init];
            NSLog(@"%@", [questionObj question]);
            
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler getUsersAnswer];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else {
            
            NSInteger usersAnswer = [userInp integerValue];
            
            if (usersAnswer == [questionObj answer]) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
        }
            
        }
    return 0;
    }
}
