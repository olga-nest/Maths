#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [NSMutableArray new];
    }
    return self;
}

-(NSString *) timeOutput {
    
    double totalTime = 0;
    
    for (int i =0; i < [_questions count]; i++) {
        totalTime = totalTime + [_questions[i] answerTime];
    }
    
    double avarageTime = totalTime/[_questions count];
    
    NSString *outputString = [NSString stringWithFormat:@"total time: %.2fs, avarage time: %.2fs", totalTime, avarageTime];
    
    return outputString;
    
}

@end
