#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        
        _rightvalue = arc4random_uniform(100) + 10;
        _leftvalue = arc4random_uniform(100) + 10;
        
        _startTime = [NSDate date];
        
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    NSTimeInterval secondsBetween = [_endTime timeIntervalSinceDate:_startTime];
    return secondsBetween;
}
    
-(void) setQuestionAndAnswer
    {
        
    };
    



@end
