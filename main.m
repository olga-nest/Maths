#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char answerCString;
        
        BOOL gameOn = YES;
        
        while (gameOn == 1) {
            
            AdditionQuestion *questionObj = [[AdditionQuestion alloc]init];
            NSLog(@"%@", [questionObj question]);
            
            printf("Input your answer:");
            fgets(&answerCString, 255, stdin);
            
            NSString *result = [NSString stringWithCString:&answerCString
                                                  encoding:NSUTF8StringEncoding];
            
            
            //removes new line and white spaces
            NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *userInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
            
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
