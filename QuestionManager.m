#import "QuestionManager.h"
#import "AdditionQuestion.h"

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
    
    NSString *outputString = [NSString stringWithFormat:@"%f", totalTime];
    
    return outputString;
    
}

@end
