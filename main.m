#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char answerCString;
        
        
        while (1 > 0) {
            
            printf("Your answer:");
            fgets(&answerCString, 255, stdin);
            
            NSString *result = [NSString stringWithCString:&answerCString
                                                  encoding:NSUTF8StringEncoding];
            
            //removes new line and white spaces
            NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *answer = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
            NSLog(@"Your answer is: %@", answer);
            
        }
    }
    return 0;
}
