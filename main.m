#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char answerCString;
        
        
        while (1) {
            
            printf("Input your answer:");
            fgets(&answerCString, 255, stdin);
            
            NSString *result = [NSString stringWithCString:&answerCString
                                                  encoding:NSUTF8StringEncoding];
            
            //removes new line and white spaces
            NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *userInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
            NSLog(@"Your answer is: %@", userInp);
            
            
            
            
        }
    }
    return 0;
}
